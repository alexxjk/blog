//
// Created by Alexander Martirosov on 2019-02-23.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {

    private let scrollView = UIScrollView()

    let stack = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setupStack()
    }

    private func setupStack() {
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.scrollView.preservesSuperviewLayoutMargins = true
        self.view.addSubview(self.scrollView)
        let scrollViewConstraints = [
            self.scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.scrollView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            self.scrollView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor)
        ]
        NSLayoutConstraint.activate(scrollViewConstraints)

        self.stack.translatesAutoresizingMaskIntoConstraints = false
        self.stack.preservesSuperviewLayoutMargins = true
        self.stack.axis = .vertical
        self.stack.distribution = .fill
        self.stack.spacing = 0
        self.scrollView.addSubview(self.stack)
        let stackConstraints = [
            self.stack.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            self.stack.rightAnchor.constraint(equalTo: self.scrollView.rightAnchor),
            self.stack.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            self.stack.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor),
            self.scrollView.widthAnchor.constraint(equalTo: self.stack.widthAnchor, multiplier: 1)
        ]
        NSLayoutConstraint.activate(stackConstraints)
    }
}
