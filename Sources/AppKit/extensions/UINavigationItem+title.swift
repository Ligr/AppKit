//
//  UINavigationItem+title.swift
//

import UIKit

public extension UINavigationItem {

    var backBarButtonTitle: String? {
        get {
            return nil
        }
        set {
            backBarButtonItem = UIBarButtonItem(title: newValue, style: .plain, target: nil, action: nil)
        }
    }

}
