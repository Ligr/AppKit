//
//  UIStackView+add.swift
//
//  Created by Alex on 6/22/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public extension UIStackView {

    func addArrangedSubviews(_ views: [UIView]) {
        for view in views {
            addArrangedSubview(view)
        }
    }

}
