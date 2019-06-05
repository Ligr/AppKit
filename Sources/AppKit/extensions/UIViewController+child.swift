//
//  UIViewController+child.swift
//
//  Created by Alex on 12/30/18.
//  Copyright © 2018 NA. All rights reserved.
//

import UIKit

public extension UIViewController {

    func addChild(_ controller: UIViewController, installView: (UIView) -> Void) {
        addChild(controller)
        installView(controller.view)
        controller.didMove(toParent: self)
    }

}
