//
//  UIImage+Color.swift
//
//  Created by Aliaksandr Huryn on 10/15/15.
//  Copyright © 2015 Home. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension UIImage {

    func imageWithColor(_ color: UIColor) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { context in
            color.setFill()
            self.draw(at: .zero)
            context.fill(CGRect(x: 0, y: 0, width: size.width, height: size.height), blendMode: .sourceAtop)
        }
    }
	
	static func imageWithColor(_ color: UIColor, size: CGSize, corderRadius: CGFloat) -> UIImage {
		let scale = UIScreen.main.scale
	
		let rect = CGRect(x: 0.0, y: 0.0, width: size.width * scale, height: size.height * scale)
		UIGraphicsBeginImageContext(rect.size)
		let context = UIGraphicsGetCurrentContext()
	
		UIBezierPath(roundedRect: rect, cornerRadius: corderRadius * scale).addClip()
		context!.setFillColor(color.cgColor)
		context!.fill(rect)
	
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
	
		return image!
	}
	
}
