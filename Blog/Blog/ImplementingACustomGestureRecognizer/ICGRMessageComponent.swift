//
// Created by Alexander Martirosov on 2019-02-23.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import UIKit

class ICGRMessageComponent: UIView {

    private let props: Props

    private let title = UILabel()

    private let text = UILabel()

    private let tapHandler: () -> ()

    init(props: Props, tapHandler: @escaping () -> ()) {
        self.props = props
        self.tapHandler = tapHandler
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.preservesSuperviewLayoutMargins = true
        self.backgroundColor = .white

        self.setupTitle()
        self.title.attributedText = Styles.TextFactory()
            .withFont(ofSize: 15, andWeight: .bold)
            .withColor(UIColor(red: 36, green: 36, blue: 36, alpha: 1))
            .create(self.props.title)

        self.setupText()
        self.text.attributedText = Styles.TextFactory()
            .withFont(ofSize: 13, andWeight: .regular)
            .withColor(UIColor(red: 92, green: 92, blue: 92, alpha: 1))
            .create(self.props.text)

        let separator = Separator()
        self.addSubview(separator)
        let separatorConstraints = [
            separator.leftAnchor.constraint(equalTo: self.layoutMarginsGuide.leftAnchor),
            separator.rightAnchor.constraint(equalTo: self.rightAnchor),
            separator.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -0.5)
        ]
        NSLayoutConstraint.activate(separatorConstraints)

        let tapGestureRecognizer = ICGRTapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.addGestureRecognizer(tapGestureRecognizer)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupTitle() {
        self.title.translatesAutoresizingMaskIntoConstraints = false
        self.title.numberOfLines = 2
        self.addSubview(self.title)
        let constraints = [
            self.title.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            self.title.rightAnchor.constraint(equalTo: self.layoutMarginsGuide.rightAnchor),
            self.title.leftAnchor.constraint(equalTo: self.layoutMarginsGuide.leftAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }

    private func setupText() {
        self.text.translatesAutoresizingMaskIntoConstraints = false
        self.text.numberOfLines = 0
        self.addSubview(self.text)
        let constraints = [
            self.text.topAnchor.constraint(equalTo: self.title.bottomAnchor, constant: 5),
            self.text.rightAnchor.constraint(equalTo: self.layoutMarginsGuide.rightAnchor),
            self.text.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -17),
            self.text.leftAnchor.constraint(equalTo: self.layoutMarginsGuide.leftAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }

    @objc private func handleTap(_ sender: ICGRTapGestureRecognizer) {
        switch sender.state {
        case .began:
            print("began")
            UIView.animate(withDuration: 0.1) { () -> Void in
                self.backgroundColor = UIColor(red: 200, green: 200, blue: 200, alpha: 0.7)
            }
        case .changed:
            print("changed")
        case .ended:
            print("ended")
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                self.backgroundColor = .white
            }) { _ in self.tapHandler() }
        case .cancelled, .failed:
            print("cacnelled of failed")
            UIView.animate(withDuration: 0.1) { () -> Void in
                self.backgroundColor = .white
            }
        default:
            break
        }
    }

    struct Props {
        let title: String
        let text: String
    }
}
