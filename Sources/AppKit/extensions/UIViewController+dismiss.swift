//
//  UIViewController+dismiss.swift
//

import UIKit

public extension UIViewController {

    func dismissModals(animated: Bool, callback: @escaping () -> Void) {
        guard let controller = self.presentedViewController else {
            callback()
            return
        }
        guard controller.isBeingDismissed == false else {
            callback()
            return
        }
        controller.dismiss(animated: animated, completion: callback)
    }

}
