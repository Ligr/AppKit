//
//  UICollectionReusableView+identifier.swift
//
//  Created by Alex on 6/26/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

extension UICollectionReusableView {

    static var identifier: String {
        return String(describing: self)
    }

}
