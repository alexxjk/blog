//
// Created by Alexander Martirosov on 2019-02-23.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import UIKit

extension UIViewController {
    func embeddedWithNavigationController() -> UINavigationController {
        let nc = UINavigationController()
        nc.pushViewController(self, animated: false)
        return nc
    }
}
