//
//  DataTools.swift
//  Swiftools
//
//  Created by Yulia Novikova on 5/15/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import Foundation

public extension Data {
    
    var prettyPrintedJSONString: NSString? {
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
              let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
              let prettyPrintedString = NSString(data: data, encoding: String.Encoding.utf8.rawValue) else { return nil }

        return prettyPrintedString
    }
}
