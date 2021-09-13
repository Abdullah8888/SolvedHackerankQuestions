//
//  enums.swift
//  SolvedHackerankQuestions
//
//  Created by Babatunde Jimoh on 09/09/2021.
//  Copyright © 2021 Jimoh Babatunde. All rights reserved.
//

import Foundation

enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}


struct Resolution {
    var width = 0
    var height = 0
    
    
    mutating func sdsd(){
        self.height = 9
    }
}
