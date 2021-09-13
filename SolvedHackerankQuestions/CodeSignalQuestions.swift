//
//  CodeSignalQuestions.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 25/05/2021.
//  Copyright © 2021 Jimoh Babatunde. All rights reserved.
//

import Foundation
/*
 Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.
 Example
 For inputArray = [3, 6, -2, -5, 7, 3], the output should be
 adjacentElementsProduct(inputArray) = 21
 */
func adjacentElementsProduct(inputArray: [Int]) -> Int {
    //let ss = inputArray.slice
    return 1
}

//Palindrome
func palindrome(stringInput: String) -> Bool {
    var i = 0
    while i < stringInput.count/2 {
        let leftIndex = stringInput.index(stringInput.startIndex, offsetBy: i)
        let char1 = stringInput[leftIndex]
        let rightIndex = stringInput.index(stringInput.startIndex, offsetBy: (stringInput.count - i) - 1 )
        let char2 = stringInput[rightIndex]
        i = i + 1
        if char1 != char2 {
            break
        }
        else {
            return true
        }
    }
    return false
}


/*
 Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

 Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. Sequence containing only one element is also considered to be strictly increasing.

 Example

 For sequence = [1, 3, 2, 1], the output should be
 almostIncreasingSequence(sequence) = false.

 There is no one element in this array that can be removed in order to get a strictly increasing sequence.

 For sequence = [1, 3, 2], the output should be
 almostIncreasingSequence(sequence) = true.

 You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].
 **/
func almostIncreasingSequence(sequence: [Int]) -> Bool {
    var array = sequence
    var i = 0
    var isRemoved = false
    var isStrictlyIncreasing = true

    while i < array.count {
        if i > 0 {
            if (array[i-1] >= array[i]) && isRemoved {
                isStrictlyIncreasing = false
                break
            }
            else if (array[i-1] >= array[i]) && !isRemoved {
                isRemoved = true
                if array[i] == array.last {
                    _ = array.remove(at: i)
                }
                else {
                    let firstPart = Array(array[0..<i])
                    let secondPart = Array(array[(i+1)..<array.count])
                    let checkedIndex = checkSplittedArray(array,firstPart, secondPart, i)
                    _ = checkedIndex == -1 ? array.remove(at: i-1) : array.remove(at:                               checkedIndex)
                }
                i = 0
            }
        }
        i+=1
     }
     
     return isStrictlyIncreasing
}

func checkSplittedArray(_ originalArray: [Int], _ a1:[Int], _ a2: [Int], _ currentIndex: Int) -> Int {
                    
    var index = -1
    if (a1[a1.count-1] == a2[0]) && (a1.count > 0 && a2.count > 0){
        if (a2.count > 1) {
            if (a2[0] < a2[1]) {
                index = originalArray.lastIndex(of: a2[0])!
            }
        }
        else {
            index = originalArray.firstIndex(of: a2[0])!
        }
    }
    else if (a1[a1.count-1] < a2[0]) && (a1.count > 0 && a2.count > 0) {
        index = currentIndex
    }
    return index
}


/**
 Let's say a triple (a, b, c) is a zigzag if either a < b > c or a > b < c.

 Given an array of integers numbers, your task is to check all the triples of its consecutive elements for being a zigzag. More formally, your task is to construct an array of length numbers.length - 2, where the ith element of the output array equals 1 if the triple (numbers[i], numbers[i + 1], numbers[i + 2]) is a zigzag, and 0 otherwise.

 Example

 For numbers = [1, 2, 1, 3, 4], the output should be isZigzag(numbers) = [1, 1, 0].

 (numbers[0], numbers[1], numbers[2]) = (1, 2, 1) is a zigzag, because 1 < 2 > 1;
 (numbers[1], numbers[2] , numbers[3]) = (2, 1, 3) is a zigzag, because 2 > 1 < 3;
 (numbers[2], numbers[3] , numbers[4]) = (1, 3, 4) is not a zigzag, because 1 < 3 < 4;
 For numbers = [1, 2, 3, 4], the output should be isZigzag(numbers) = [0, 0];

 Since all the elements of numbers are increasing, there are no zigzags.

 For numbers = [1000000000, 1000000000, 1000000000], the output should be isZigzag(numbers) = [0].

 Since all the elements of numbers are the same, there are no zigzags
 */

func isZigzag(numbers: [Int]) -> [Int] {
    var i = 0
    var resultArray:  [Int] = []
    while i < numbers.count {
        if i+2 < numbers.count {
            if (numbers[i] < numbers[i+1]) && (numbers[i+1] > numbers[i+2]) {
                resultArray.append(1)
            }
            else if (numbers[i] > numbers[i+1]) && (numbers[i+1] < numbers[i+2]) {
                resultArray.append(1)
            }
            else {
                resultArray.append(0)
            }
        }
        i+=1
    }
    return resultArray
}


func returnUnPairElement(array: [Int]) -> Int {
    var arrNums = array
    var counts = [Int: Int]()
    var unpairElement = 0
    arrNums.forEach { counts[$0] = (counts[$0] ?? 0) + 1 }
    print(counts)
    for (key, value) in counts {
        if value % 2 != 0 {
            print(value)
            unpairElement = key
            break
        }
    }
    return unpairElement
}

func returnXvalueIfpointAreSymmetric(dict: [Int: Int]) -> Double {
    let xValues = Array(dict.keys)
    let yValues = Array(dict.values)
    var valueOnXaxis = 0.0
    if dict.count > 1 {
        let midX = xValues.reduce(0, +)/xValues.count
        //let midY = yValues.reduce(0, +)/yValues.count
        valueOnXaxis = Double(midX)
    }
    
    return valueOnXaxis
}

/*
prices: [110, 95, 70]
notes:
["10.0% higher than in-store",
 "5.0% lower than in-store",
 "Same as in-store"]
*/
func isAdmissibleOverpayment(prices: [Double], notes: [String], x: Double) -> Bool {
    var overPaying: Double = 0.0
    
    for (i, _) in prices.enumerated() {
        if notes[i].contains("hi") {
            let percentValue = Double(notes[i].split(separator: "%")[0])!
            let inStorePrice = (prices[i] * 100) * 1/(100 + percentValue)
            overPaying = overPaying + (prices[i] - inStorePrice)
        }
        else if (notes[i].contains("l")) {
            let percentValue = Double(notes[i].split(separator: "%")[0])!
            let inStorePrice = (prices[i] * 100) * 1/(100 - percentValue)
            overPaying = overPaying - abs(prices[i] - inStorePrice)
        }
        else {
            
        }
        
    }
    print(overPaying)
    return overPaying <= x ? true : false
}
