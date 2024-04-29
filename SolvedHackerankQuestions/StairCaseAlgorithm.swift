//
//  StairCaseAlgorithm.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 18/05/2020.
//  Copyright © 2020 Jimoh Babatunde. All rights reserved.
//

import Foundation

class StairCaseAlgorithm {
    
    func formStairCase(n: Int)  {
        var stairecase = ""
        var arr = Array(repeating: 2, count: 4)
        arr.last
        var space  = String(repeating: " ", count: n )
            for _ in 1...n {
                stairecase = stairecase  + "#"
                _ =  space.removeLast()
                var hashword = space + stairecase
                print("\(hashword)", terminator: "\n")
            }
    }
}
