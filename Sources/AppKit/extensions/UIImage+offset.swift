//
//  UIImage+offset.swift
//
//  Created by Alex on 5/6/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

public extension UIImage {

    func imageWithOffset(_ offset: CGFloat) -> UIImage {
        UIGraphicsBeginImageContext(CGSize(width: self.size.width + offset, height: self.size.height))
        self.draw(in: CGRect(x: offset, y: 0, width: self.size.width, height: self.size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }

}
