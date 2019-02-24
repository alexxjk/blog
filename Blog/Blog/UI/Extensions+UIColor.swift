//
// Created by Alexander Martirosov on 2019-02-23.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat) {
        func component(_ c: Int) -> CGFloat {
            return CGFloat(c) / 255.0
        }
        self.init(red: component(red), green: component(green), blue: component(blue), alpha: alpha)
    }

    func image(_ size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(x: 0, y: 0, width: size.width, height: size.height))
        }
    }
}
