//
//  UIButton+flipIcon.swift
//

import UIKit

public extension UIButton {

    @IBInspectable var flipIcon: Bool {
        get {
            return false // this should not be the case!
        }
        set {
            self.transform = .identity
            self.titleLabel?.transform = .identity
            self.imageView?.transform = .identity

            if newValue == true {
                self.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
                self.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
                self.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
            }
        }
    }

}
