//
//  UIView+add.swift
//
//  Created by Alex on 7/25/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public extension UIView {

    func addSubviews(_ views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }

    func addSubviewWithStretchingConstraints(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.topAnchor.constraint(equalTo: topAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

}
