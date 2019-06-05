//
//  UILabel+lineHeight.swift
//
//  Created by Alex on 12/30/18.
//  Copyright © 2018 NA. All rights reserved.
//

import UIKit

extension UILabel {

    func setText(_ text: String?, lineHeight height: CGFloat) {
        guard let text = text else {
            self.text = nil
            return
        }
        let mutableAttrString = NSMutableAttributedString(string: text)
        let style = NSMutableParagraphStyle()
        style.minimumLineHeight = height
        style.maximumLineHeight = height
        mutableAttrString.addAttributes([.paragraphStyle: style])
        attributedText = mutableAttrString
    }

}
