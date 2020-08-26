//
//  RandomDate.swift
//  Swiftools
//
//  Created by Yulia Novikova on 8/26/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import Foundation

 public extension Date {
    
    static func randomInPast(_ days: Int) -> Date {
        let today = Date()
        let past = today.addingTimeInterval(TimeInterval(-days*24*60*60))
        return Date.random(between: past, and: today)
    }

    static func random() -> Date {
        let randomTime = TimeInterval(arc4random_uniform(UInt32.max))
        return Date(timeIntervalSince1970: randomTime)
    }
    
    static func random(between initial: Date, and final: Date) -> Date {
        let interval = final.timeIntervalSince(initial)
        let randomInterval = TimeInterval(arc4random_uniform(UInt32(interval)))
        return initial.addingTimeInterval(randomInterval)
    }

}

