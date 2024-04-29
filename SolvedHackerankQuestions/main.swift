//
//  main.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 18/05/2020.
//  Copyright © 2020 Jimoh Babatunde. All rights reserved.
//

import Foundation

print("Hello, World!")


let namesY = ["Harry", "Ron", "Hermione", "kon"]
var dfC = 0

let scoreboard = namesY.reduce(into: [:]) { $0[$1] = 1 }

print(scoreboard)

let dictReduced = namesY.reduce(into: [Int : String]()) {(curr, next) in
    //dfC+=1
    var sd = curr[1, default: next]
}

//print(dictReduced)

