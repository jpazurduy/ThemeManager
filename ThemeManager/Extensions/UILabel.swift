//
//  UILabel.swift
//  ThemeManager
//
//  Created by Jorge Azurduy on 4/29/22.
//

import UIKit
import Foundation

extension UILabel {
    func setText(font: String, textColor: UIColor, size: CGFloat) {
        self.font = UIFont(name: font, size: size)
        self.textColor = textColor
    }
    
    func bulletPointList(strings: [String]) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.headIndent = 5
        paragraphStyle.minimumLineHeight = 22
        paragraphStyle.maximumLineHeight = 22
        paragraphStyle.tabStops = [NSTextTab(textAlignment: .left, location: 15)]

        let stringAttributes = [
            NSAttributedString.Key.font: UIFont(name: FontManager.regular, size: 14),
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]

        let string = strings.map({ "•\t\($0)" }).joined(separator: "\n")

        return NSAttributedString(string: string, attributes: stringAttributes as [NSAttributedString.Key : Any])
    }
}
