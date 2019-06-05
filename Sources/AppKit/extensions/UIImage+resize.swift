//
//  UIImage+resize.swift
//
//  Created by Alex on 9/17/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

public extension UIImage {

    func scaled(toWidth scaledToWidth: CGFloat) -> UIImage {
        let oldWidth = self.size.width
        let scaleFactor = scaledToWidth / oldWidth

        let newHeight = self.size.height * scaleFactor
        let newWidth = oldWidth * scaleFactor

        UIGraphicsBeginImageContextWithOptions(CGSize(width: newWidth, height: newHeight), false, UIScreen.main.scale)
        self.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }

}
