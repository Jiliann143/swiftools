//
//  ArrayTools.swift
//  Swiftools
//
//  Created by Yulia Novikova on 5/15/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import Foundation

public extension Array where Element : Hashable {
    
    var unique: [Element] { return Array(Set(self)) }
}

public extension Array {
    
    var randomElement: Element? {
        if count == 0 { return nil }
        return self[Int(arc4random_uniform(UInt32(count)))]
    }
}

extension Array where Element: Equatable {
    
    mutating func delete(_ object: Element) {
        guard let index = (firstIndex { $0 == object }) else { return }
        remove(at: index)
    }
    
    mutating func appendIfNotPresent(_ object: Element) {
        if (firstIndex { $0 == object }) != nil { return }
        append(object)
    }
    
    func contains(_ element: Element) -> Bool {
        first(where: { $0 == element }) != nil
    }
    
}



