//
//  GamesData.swift
//  Project Serene
//
//  Created by Maree Williams on 12/4/17.
//  Copyright © 2017 TheSwiftCollective. All rights reserved.
//

import Foundation

struct Distractions {
    
    enum DistractionType: String{
        case GAMES 
        case VIDEOS
        case MUSIC
    }
   
    var name: String?
    var distraction: DistractionType
  
    init(distraction: DistractionType, name: String) {
        self.name = name
        self.distraction = distraction
      
    }
       
    
}

