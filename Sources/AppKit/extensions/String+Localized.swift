//
//  String+util.swift
//

import Foundation

extension String {
	
	var localized: String {
        return NSLocalizedString(self, comment: "")
    }

    func localized(_ args: CVarArg...) -> String {
        return String(format: self.localized, arguments: args)
    }
	
}
