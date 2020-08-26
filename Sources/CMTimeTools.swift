//
//  CMTimeTools.swift
//  Swiftools
//
//  Created by Yulia Novikova on 8/26/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import CoreMedia

public extension CMTime {
    
    var durationString: String {
        
        let totalSeconds = Int(CMTimeGetSeconds(self))
        let hours: Int   = Int(totalSeconds / 3600)
        let minutes: Int = Int(totalSeconds % 3600 / 60)
        let seconds: Int = Int((totalSeconds % 3600) % 60)
        
        if hours > 0 {
            return String(format: "%i:%02i:%02i", hours, minutes, seconds)
        } else {
            return String(format: "%02i:%02i", minutes, seconds)
        }
    }
}
