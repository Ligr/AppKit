//
//  UITableViewCell+identifier.swift
//

import UIKit

public extension UITableViewCell {

    static var identifier: String {
        return String(describing: self)
    }

}
