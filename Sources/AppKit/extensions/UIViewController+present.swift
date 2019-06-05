//
//  UIViewController+present.swift
//

import UIKit

extension UIViewController {

    func presentModally(animated: Bool = true, completion: (() -> Void)? = nil) {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let view = UIViewController()
        window.rootViewController = view
        window.makeKeyAndVisible()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
            view.present(self, animated: animated, completion: {
                completion?()
                let _ = window
            })
        }
    }

}
