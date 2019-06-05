//
//  UICollectionView.swift
//
//  Created by Alex on 5/8/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

public extension UICollectionView {

    func registerNibForCell<T: UICollectionViewCell>(_ cell: T.Type) {
        registerNibForCell(cell, withIdentifier: cell.identifier)
    }

    func registerNibForCell<T: UICollectionViewCell>(_ cell: T.Type, withIdentifier identifier: String) {
        let nib = UINib(nibName: String(describing: cell), bundle: nil)
        register(nib, forCellWithReuseIdentifier: identifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(for index: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: T.identifier, for: index) as! T
    }

    func registerHeader<T: UICollectionReusableView>(_ header: T.Type) {
        let nib = UINib(nibName: String(describing: header), bundle: nil)
        register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: header.identifier)
    }

    func registerFooter<T: UICollectionReusableView>(_ footer: T.Type) {
        let nib = UINib(nibName: String(describing: footer), bundle: nil)
        register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footer.identifier)
    }

    func dequeueHeader<T: UICollectionReusableView>(for index: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier, for: index) as! T
    }

    func dequeueFooter<T: UICollectionReusableView>(for index: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier, for: index) as! T
    }

}
