//
//  Sequence.swift
//
//  Created by Alex on 2/27/19.
//  Copyright © 2019 NA. All rights reserved.
//

import Foundation

public extension Sequence where Element: Equatable {

    func uniqElements() -> [Element] {
        var uniq = [Element]()
        for element in self {
            if uniq.contains(element) == false {
                uniq.append(element)
            }
        }
        return uniq
    }

}

public extension Sequence where Element: Equatable & Hashable {

    func uniqElements() -> [Element] {
        var uniq = [Element]()
        var added = Set<Element>()
        for element in self {
            if added.contains(element) == false {
                added.insert(element)
                uniq.append(element)
            }
        }
        return uniq
    }

}
