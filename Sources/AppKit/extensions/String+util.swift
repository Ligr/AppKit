//
//  String+util.swift
//
//  Created by Alex on 1/24/16.
//  Copyright © 2016 NA. All rights reserved.
//

import Foundation

extension String {

    var isNumber: Bool {
        get {
            return !self.isEmpty && self.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
        }
    }

    func filterCharactersIn(set charactersSet: CharacterSet) -> String {
        let newStr = self.unicodeScalars.filter { CharacterSet.decimalDigits.contains($0) }
        return String(String.UnicodeScalarView(newStr))
    }

    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
	
}
