//
//  UIKit+Localized.swift
//

import UIKit

public extension UIButton {

    @IBInspectable var localizedTitle: String? {
        set {
            setTitle(newValue?.localized, for: .normal)
        }
        get {
            return currentTitle
        }
    }

}

public extension UILabel {

    @IBInspectable var localizedTitle: String? {
        set {
            text = newValue?.localized
        }
        get {
            return text
        }
    }

}

public extension UITextView {

    @IBInspectable var localizedText: String? {
        set {
            text = newValue?.localized
        }
        get {
            return text
        }
    }

}

public extension UITextField {

    @IBInspectable var localizedText: String? {
        set {
            text = newValue?.localized
        }
        get {
            return text
        }
    }

    @IBInspectable var localizedPlaceholder: String? {
        set {
            placeholder = newValue?.localized
        }
        get {
            return placeholder
        }
    }

}
