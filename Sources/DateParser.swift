//
//  DateParser.swift
//  Swiftools
//
//  Created by Yulia Novikova on 8/26/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import Foundation

public extension Date {
    enum ServerFormat: String {
        case dateAndTime = "yyyy-MM-dd'T'HH:mm:ss"
        case onlyDate = "yyyy-MM-dd"
    }
}

public extension Date {
    
    private static let monthDayYearTimeDashed  = "MM/dd/yyyy h:mm a"
    private static let serverFormat            = "yyyy-MM-dd'T'HH:mm:ss"
    private static let monthDayDashed          = "MM/dd"
    private static let monthDayFormat          = "MMM, d"
    private static let monthYearFormat         = "MMMM, yyyy"
    private static let monthDayTimeFormat      = "MMM, d h:mm a"
    private static let monthDayYearFormat      = "MMM d, yyyy"
    
    private static let utc = TimeZone(abbreviation: "UTC")!
    private static let local = TimeZone.current
    
    var toMonthDayYear: String {
        return self.stringWithFormat(Date.monthDayYearFormat, timezone: Date.local)
    }
    
    var toMonthDayFormat: String {
        return self.stringWithFormat(Date.monthDayFormat, timezone: Date.local)
    }
    
    var toMonthDayTimeFormat: String {
        return self.stringWithFormat(Date.monthDayTimeFormat, timezone: Date.local)
    }

    var monthDayYearTimeDashed: String {
        return self.stringWithFormat(Date.monthDayYearTimeDashed, timezone: Date.local)
    }
    
    var toServerString: String {
        return self.stringWithFormat(Date.serverFormat, timezone: Date.utc)
    }
    
    var toMonthDayDashed: String {
        return self.stringWithFormat(Date.monthDayDashed, timezone: Date.local)
    }
    
    var toMonthYearFormat: String {
        return self.stringWithFormat(Date.monthYearFormat, timezone: Date.local)
    }
    
}

fileprivate extension Date {
    
    func stringWithFormat(_ format: String, timezone: TimeZone) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = timezone
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
}
