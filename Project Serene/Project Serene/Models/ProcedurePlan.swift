//
//  ProcedurePlan.swift
//  Project Serene
//
//  Created by Jason van Lint on 3/3/17.
//  Copyright © 2017 TheSwiftCollective. All rights reserved.
//

import Foundation

class ProcedurePlan{
    
    var name: String
    var date: Date
    var location: String
    
    init (procName: String, procDate: Date, procLocation: String){
        self.name = procName
        self.date = procDate
        self.location = procLocation
    }
    
}
