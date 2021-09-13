//
//  GetterAndSetter.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 23/05/2020.
//  Copyright © 2020 Jimoh Babatunde. All rights reserved.
//

import Foundation


struct Person {
    var age: Int
    var hand: Int
    var check: Bool

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
    
    var fly: Bool {
        get {
            return check
        }
        
        set (value) {
            check = value
        }
    }
    
}

//var fan = Person(age: 30, hand: 40, check: false)
//fan.fly = true
//print(fan.ageInDogYears)
//print(fan.fly)


//extension String {
//    //Check if string is only numeric
//    func isValidNumericValue() -> Bool {
//        let numberRegEx  = "[0-9]+"
//        let testCase = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
//        return testCase.evaluate(with: self)
//    }
//}
//extension Int {
//    //Check if string is only numeric
//    func isValidNumericValue() -> Bool {
//        let numberRegEx  = "[0-9]"
//        let testCase = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
//        return testCase.evaluate(with: self)
//    }
//}
//
//var sample:String = "12555%"
//var sample1:Int = 12
//
//if sample.isValidNumericValue() {
//    print("yes")
//}
//else {
//    print("No")
//}
