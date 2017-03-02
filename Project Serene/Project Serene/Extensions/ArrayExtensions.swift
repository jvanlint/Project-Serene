//
//  ArrayExtensions.swift
//  CodeNameGenerator
//
//  Created by Jason van Lint on 15/09/2016.
//  Copyright © 2016 Dead Frog Studios. All rights reserved.
//

import Foundation

extension Array {

    /// Selects a random item from the contents of an array.
    ///
    /// - returns: A randomly selected element from the array.
    func randomItem() -> Element {
        
        // TODO: Check if array contains values.
        
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}
