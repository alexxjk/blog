//
// Created by Alexander Martirosov on 2019-02-23.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import UIKit

extension Styles {
    class TextFactory {

        var color: UIColor = .black
        var kerning: Float?
        var leading: Int?
        var baseline: Int?
        var alignment: NSTextAlignment = .left
        var fontSize: CGFloat = 12
        var fontWeight: UIFont.Weight = .regular
        var lineBreakMode: NSLineBreakMode = .byTruncatingTail

        func withColor(_ color: UIColor) -> TextFactory {
            self.color = color
            return self
        }

        func withKerning(_ kerning: Float) -> TextFactory {
            self.kerning = kerning
            return self
        }

        func withLeading(_ leading: Int) -> TextFactory {
            self.leading = leading
            return self
        }

        func withBaseline(_ baseline: Int) -> TextFactory {
            self.baseline = baseline
            return self
        }

        func withTextAlignment(_ alignment: NSTextAlignment) -> TextFactory {
            self.alignment = alignment
            return self
        }

        func withFont(ofSize size: CGFloat, andWeight weight: UIFont.Weight) -> TextFactory {
            self.fontSize = size
            self.fontWeight = weight
            return self
        }

        func withLinkeBreakMode(_ mode: NSLineBreakMode) -> TextFactory {
            self.lineBreakMode = mode
            return self
        }

        func create(_ string: String) -> NSAttributedString {
            let attributes = getAttributes()
            return NSAttributedString(string: string, attributes: attributes)
        }

        func createMutable(_ string: String) -> NSMutableAttributedString {
            let attributes = getAttributes()
            return NSMutableAttributedString(string: string, attributes: attributes)
        }

        private func getAttributes() ->  [NSAttributedString.Key: Any] {
            var attributes = [NSAttributedString.Key: Any]()
            let style = NSMutableParagraphStyle()
            style.alignment = self.alignment
            style.lineBreakMode = self.lineBreakMode
            if let lineHeight = self.leading {
                style.minimumLineHeight = CGFloat(lineHeight)
                style.maximumLineHeight = CGFloat(lineHeight)
            }
            if let baseline = self.baseline {
                attributes[NSAttributedString.Key.baselineOffset] = baseline
            }
            attributes[NSAttributedString.Key.foregroundColor] = self.color
            attributes[NSAttributedString.Key.paragraphStyle] = style
            if let kerning = self.kerning {
                attributes[NSAttributedString.Key.kern] = kerning
            }

            let font = UIFont.systemFont(ofSize: self.fontSize, weight: self.fontWeight)
            attributes[NSAttributedString.Key.font] = font

            return attributes
        }
    }
}
