//
//  UIStackView+remove.swift
//

import UIKit

@available(iOS 9.0, *)
public extension UIStackView {

    func removeAll() {
        for view in arrangedSubviews {
            removeArrangedSubview(view)
            view.removeFromSuperview()
        }
    }

}
