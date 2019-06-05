//
//  UIKit+Localized.swift
//

import UIKit

extension UIButton {

    @IBInspectable var localizedTitle: String? {
        set {
            setTitle(newValue?.localized, for: .normal)
        }
        get {
            return currentTitle
        }
    }

}

extension UILabel {

    @IBInspectable var localizedTitle: String? {
        set {
            text = newValue?.localized
        }
        get {
            return text
        }
    }

}

extension UITextView {

    @IBInspectable var localizedText: String? {
        set {
            text = newValue?.localized
        }
        get {
            return text
        }
    }

}

extension UITextField {

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
