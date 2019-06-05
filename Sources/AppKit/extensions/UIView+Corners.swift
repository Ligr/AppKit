//
//  View+Corners.swift
//

import UIKit

public extension UIView {

	@IBInspectable var cornerRadius: CGFloat {
		get {
			return self.layer.cornerRadius
		}
		set (newRadius) {
			self.layer.cornerRadius = newRadius
            if newRadius > 0 {
                self.clipsToBounds = true
            }
		}
	}
	
	@IBInspectable var borderWidth: CGFloat {
		get {
			return self.layer.borderWidth
		}
		set (newWidth) {
			self.layer.borderWidth = newWidth
		}
	}
	
	@IBInspectable var borderColor: UIColor? {
		get {
			return (self.layer.borderColor != nil) ? UIColor(cgColor: self.layer.borderColor!) : nil
		}
		set (newColor) {
			self.layer.borderColor = newColor?.cgColor
		}
	}
	
}
