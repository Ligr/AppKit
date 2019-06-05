//
//  UIViewController+titleImage.swift
//
//  Created by Alex on 12/26/18.
//  Copyright © 2018 NA. All rights reserved.
//

import UIKit

extension UIViewController {

    var titleImage: UIImage? {
        get {
            return nil
        }
        set {
            guard let navigationController = navigationController else {
                return
            }
            // this will center image horizontally in the navbar
            let titleView = UIView(frame: CGRect(x: 0, y: 0, width: navigationController.navigationBar.bounds.size.width / 2, height: navigationController.navigationBar.bounds.size.height))
            let imageView = UIImageView(frame: titleView.bounds)
            imageView.contentMode = .scaleAspectFit
            imageView.image = newValue
            titleView.addSubview(imageView)
            navigationItem.titleView = titleView
        }
    }

}
