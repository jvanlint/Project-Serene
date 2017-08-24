//
//  gamesTestData.swift
//  Project Serene
//
//  Created by Maree Williams on 11/8/17.
//  Copyright © 2017 TheSwiftCollective. All rights reserved.
//

import Foundation

//Data for test purposes
let game1 = Distractions(distraction: .GAMES, name: "Game 1")
let game2 = Distractions(distraction: .GAMES, name: "Game 2")
let video1 = Distractions(distraction: .VIDEOS, name: "Video 1")
let music1 = Distractions(distraction: .MUSIC, name: "Song 1")
let music2 = Distractions(distraction: .MUSIC, name: "Song 2")


var dataDictStr2:[Distractions.DistractionType:[String]] = [ .GAMES:[game1.name!],.VIDEOS:[video1.name!],.MUSIC:[music1.name!, music2.name!]]
var dataDictStr:[Distractions.DistractionType:[String]] = [ .GAMES:[game1.name!,game2.name!],.VIDEOS:[video1.name!],.MUSIC:[music1.name!, music2.name!]]



struct Objects {
    
    var sectionName : String!
    var sectionObjects : [String]!
}
