//
//  RawTest.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 09/01/2021.
//  Copyright © 2021 Jimoh Babatunde. All rights reserved.
//

import Foundation



func rawTestHere () {
    let array1 : [Int] = [2,4,4]
    let gg : [Int] = []
    
    let result = array1.reduce(0, { initial, element in
        var dd = 7
        return initial + element
    })
    let resultt = array1.reduce(0) { ini, elem in
        ini + elem
    }
    let resulttr = array1.reduce(0){$0+$1}
    print(resulttr)
    let resulttt = array1.reduce(0) { ini, elem in
        ini + elem
    }
    print(resultt)
    let ddd = array1.index(of: 4)
    let ddd1 = array1.lastIndex(of: 4)
    print(ddd)
    print(ddd1)

    let fil = array1.filter{ ch in
        ch == 4
    }
    let fill = array1.filter{$0 == 2}

    print(fill)
    let sam = "samboy"
    let ind  = sam.index(sam.startIndex, offsetBy:3)
    let ddf = sam[...ind]
    let fg = sam.index(after: ind)
    let wd = sam[fg...]
    print(wd)
    print(ddf)
}

func rawTest2() {
    let rr = "u3464raqs"
    let dfe = rr.max()
    let ddd = [5,2, 4]
    let dfd = ddd.min { (aa, bb) -> Bool in
        print("\(aa) \(bb)")
        return aa < bb
    }
}

func rawTest3 () {
    var a1 : Set<String> = ["f", "o", "o", "l"]
    var a11 : Set<Int> = [1,3,4,4]
    var a2 : Set<String> = ["c", "o", "o", "l"]
    var a3 : Set<String> = []
    let dd = a2.intersection(a1)
    print(dd)
    let dff = a1.symmetricDifference(a2)
    print(dff)

    let rr = "abc"
    let rre = rr.reduce(into: Set<String>()) { (curr, next) in
        curr.insert(String(next))
    }

    print(rre)
    _ = rr.map{a3.insert($0.description)}
    print(a3)
    let ddd = a11.reduce(0) { initial, next in
        initial + next
    }
}
