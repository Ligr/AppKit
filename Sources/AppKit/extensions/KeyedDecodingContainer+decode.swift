//
//  KeyedDecodingContainer+decode.swift
//
//  Created by Alex on 7/26/18.
//  Copyright © 2018 Home. All rights reserved.
//

import Foundation

public extension KeyedDecodingContainer {

    func decode<Type: Decodable>(_ key: KeyedDecodingContainer.Key) throws -> Type {
        return try decode(Type.self, forKey: key)
    }

    func decodeIfPresent<Type: Decodable>(_ key: KeyedDecodingContainer.Key) throws -> Type? {
        return try decodeIfPresent(Type.self, forKey: key)
    }

}
