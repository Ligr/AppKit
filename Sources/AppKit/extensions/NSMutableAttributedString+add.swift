//
//  NSMutableAttributedString+add.swift
//
//  Created by Alex on 12/30/18.
//  Copyright © 2018 NA. All rights reserved.
//

import Foundation

public extension NSMutableAttributedString {

    func addAttributes(_ attributes: [NSAttributedString.Key : Any], to str: String) {
        guard let range = self.string.range(of: str) else {
            return
        }
        self.addAttributes(attributes, range: NSRange.init(range, in: self.string))
    }

    func addAttributes(_ attributes: [NSAttributedString.Key : Any]) {
        addAttributes(attributes, to: self.string)
    }

}
