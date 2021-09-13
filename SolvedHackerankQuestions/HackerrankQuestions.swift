//
//  HackerrankQuestions.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 09/04/2021.
//  Copyright © 2021 Jimoh Babatunde. All rights reserved.
//

import Foundation


func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aCount = 0
    var bCount = 0
    var result: [Int] = []
    for (index, _) in a.enumerated(){
        if a[index] == b[index] {
            continue
        }
        else {
            if a[index] > b[index] {
                aCount+=1
            }
            else {
                bCount+=1
            }
        }
    }
    result.append(aCount)
    result.append(bCount)
    return result

}
