//
//  UIView+remove.swift
//
//  Created by Alex on 6/22/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

extension UIView {

    func removeAllSubviews() {
        for view in subviews {
            view.removeFromSuperview()
        }
    }

}
