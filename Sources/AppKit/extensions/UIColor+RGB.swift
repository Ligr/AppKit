//
//  UIColor+RGB.swift
//

import UIKit

public extension UIColor {
	
	convenience init(_ r: Double, _ g: Double, _ b: Double, _ a: Double) {
		self.init(red: CGFloat(r / 255.0), green: CGFloat(g / 255.0), blue: CGFloat(b / 255.0), alpha: CGFloat(a))
	}
	
	convenience init(_ r: Double, _ g: Double, _ b: Double) {
		self.init(r, g, b, 1)
	}
	
}
