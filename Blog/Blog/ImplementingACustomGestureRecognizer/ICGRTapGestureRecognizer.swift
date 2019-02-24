//
// Created by Alexander Martirosov on 2019-02-23.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import UIKit
import UIKit.UIGestureRecognizerSubclass

class ICGRTapGestureRecognizer: UIGestureRecognizer {

    var timer: Timer?

    var initialTouchPoint: CGPoint?

    var trackedTouch: UITouch?

    var delayedStates = [State]()

    var isTimerFired = false

    override init(target: Any?, action: Selector?) {
        super.init(target: target, action: action)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesBegan(touches, with: event)

        // Fails if initial event contains two touches
        if touches.count != 1 {
            self.state = .failed
        }

        // Capture the first touch
        if self.trackedTouch == nil {
            self.trackedTouch = touches.first
            self.initialTouchPoint = self.trackedTouch?.location(in: self.view)
            //self.state = .began
            self.delayedStates.append(.began)
        } else { // Ignore all new touches in sequence
            touches.filter { $0 != self.trackedTouch }.forEach { touch in self.ignore(touch, for: event) }
        }

        self.timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { [weak self] timer in
            guard let `self` = self else { return }
            self.isTimerFired = true
            self.delayedStates.forEach { state in
                self.state = state
            }
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesMoved(touches, with: event)

        let newTouch = touches.first

        // Fails if vertical movement is greater than allowed
        guard let newPoint = newTouch?.location(in: self.view), let initialPoint = self.initialTouchPoint else {
            self.state = .failed
            return
        }

        if abs(newPoint.y - initialPoint.y) > 2 {
            self.state = .failed
        }
        else {
            self.updateState(.changed)
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        self.updateState(.ended)
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent) {
        self.updateState(.cancelled)
    }

    override func reset() {
        self.timer?.invalidate()
        self.isTimerFired = false
        self.trackedTouch = nil
        self.initialTouchPoint = nil
    }

    private func updateState(_ state: State) {
        if self.isTimerFired {
            self.state = state
        } else {
            self.delayedStates.append(state)
        }
    }
}
