//
//  URLTools.swift
//  Swiftools
//
//  Created by Yulia Novikova on 8/26/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import Foundation

public extension URL {
    
    var toUrl:     URL?   {    self   }
    var toString:  String { "\(self)" }
    var toFileURL: URL    {    self   }
    
    
    var attributes: [FileAttributeKey : Any]? {
        try? FileManager.default.attributesOfItem(atPath: path)
    }

    var fileSize: Int {
        attributes?[.size] as? Int ?? Int(0)
    }

    var fileSizeString: String {
        ByteCountFormatter.string(fromByteCount: Int64(fileSize), countStyle: .file)
    }
    
    var fileExists: Bool {
        FileManager.default.fileExists(atPath: toString)
    }
    
    var typeIdentifier: String? {
        return (try? resourceValues(forKeys: [.typeIdentifierKey]))?.typeIdentifier
    }
    
    var localizedName: String? {
        return (try? resourceValues(forKeys: [.localizedNameKey]))?.localizedName
    }
    
}
