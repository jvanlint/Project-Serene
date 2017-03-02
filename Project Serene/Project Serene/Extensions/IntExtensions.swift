//
//  IntExtensions.swift
//  CodeNameGenerator
//
//  Created by Jason van Lint on 15/09/2016.
//  Copyright © 2016 Dead Frog Studios. All rights reserved.
//

import Foundation

extension Int {    
    /// Generates a random integer.
    ///
    /// - parameter range: A range of numbers for which the int should fall between.
    ///
    /// - returns: A random number (int) within the specified range.
    static func random(range: Range<Int> ) -> Int {
        
        var offset = 0
        
        if range.lowerBound < 0   // allow negative ranges
        {
            offset = abs(range.lowerBound)
        }
        
        let mini = UInt32(range.lowerBound + offset)
        let maxi = UInt32(range.upperBound + offset)
        
        return Int(mini + arc4random_uniform(maxi - mini)) - offset
    }
}
