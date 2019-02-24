//
// Created by Alexander Martirosov on 2019-02-23.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import UIKit

class Separator: UIView {

    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor(red: 205, green: 205, blue: 205, alpha: 1)
        self.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
