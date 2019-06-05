//
//  String+Trim.swift
//

import Foundation

public extension String {

    func trim() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }

}
