//
//  UITableView+register.swift
//

import UIKit

public extension UITableView {

    func registerNibForCell<T: UITableViewCell>(_ cell: T.Type) {
        let nib = UINib(nibName: String(describing: cell), bundle: nil)
        self.register(nib, forCellReuseIdentifier: cell.identifier)
    }

    func dequeueReusableCell<T: UITableViewCell>(for index: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: T.identifier, for: index) as! T
    }

    func registerNibForHeaderFooter<T: UITableViewHeaderFooterView>(_ view: T.Type) {
        let nib = UINib(nibName: String(describing: view), bundle: nil)
        register(nib, forHeaderFooterViewReuseIdentifier: view.identifier)
    }

    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>() -> T {
        return self.dequeueReusableHeaderFooterView(withIdentifier: T.identifier) as! T
    }

}
