//
//  LeetcodeQuestions.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 09/01/2021.
//  Copyright © 2021 Jimoh Babatunde. All rights reserved.
//

import Foundation
/*Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order
 Example 1:
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Constraints:
 2 <= nums.length <= 103
 -109 <= nums[i] <= 109
 -109 <= target <= 109
 Only one valid answer exists..**/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indicesArray: [Int] = []
     outerLoop: for num in nums {
        let numIndex = nums.firstIndex(of: num)
         for (index, elem) in nums.enumerated() {
            if numIndex != index {
                 let sum = elem + num
                if sum == target {
                    indicesArray.append(numIndex!)
                    indicesArray.append(index)
                    break outerLoop
                }
             }
         }
    }
    return indicesArray
}

class Solution {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var countShortestTransform = 0
        var wordListOfSet: [Set<String>] = []
        var count = 0
        if wordList.contains(endWord) {
            var beginWordSet = beginWord.reduce(into: Set<String>()) {
                (set, elem) in
                set.insert(String(elem))
            }
            var endWordSet = endWord.reduce(into: Set<String>()) {
                (set, elem) in
                set.insert(String(elem))
            }
            if beginWordSet.symmetricDifference(endWordSet).count == 2 {
                return 1
            }
            
            for word in wordList {
             let wordSet = word.reduce(into: Set<String>()) { (wordSet, element) in
                    wordSet.insert(element.description)
            }
            wordListOfSet.append(wordSet)
         }
            
            //for word in wordListOfSet {
                
                for (index,wordSet) in wordListOfSet.enumerated() {
                    
                if beginWordSet.symmetricDifference(wordSet).count == 2 &&
                    beginWordSet.symmetricDifference(endWordSet).count == 2 {
                    print("yes \(beginWordSet) and \(wordSet) and \(endWordSet)")
                       countShortestTransform = countShortestTransform + 1
                        break
                   }
                    else if beginWordSet.symmetricDifference(wordSet).count == 2 {
                    print("no \(beginWordSet) and \(wordSet)")
                        countShortestTransform = countShortestTransform + 1
                        beginWordSet = wordSet
                        
                    }
                }
                //beginWordSet = word
            //}

        }
        
        return countShortestTransform + 1
        
    }
}


func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
       let mergedArray = (nums1 + nums2).sorted()
       let count = mergedArray.count
       let half = mergedArray.count / 2
       if count % 2 == 0 {
           let midNum = mergedArray[half]
           let prevMid = mergedArray[half - 1]
        return Double(midNum + prevMid) / 2.0
       }
       else {
           return Double(mergedArray[half])
       }
}

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var numsList : [Int] = []
    var i = 0
    if nums1.count > m {
        while i < m {
            numsList.append(nums1[i])
            i = i + 1
        }
        
        nums1 = (numsList + nums2).sorted()
    }
    else {
        nums1 = (nums1 + nums2).sorted()
    }
}

func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
    let w1 = word1.reduce(into: String()) { $0 = $0 + String($1)}
    let w2 = word2.reduce(into: String()) { $0 = $0 + String($1)}
    let check = (w1 == w2) ? true : false
    return check
}

func reverseWords(_ s: String) -> String {
    var reversedSentence = ""
    let seperatedWord = s.components(separatedBy: " ")
    for (index, word) in seperatedWord.enumerated() {
        reversedSentence = reversedSentence + word.reversed()
        if (index < seperatedWord.count - 1) {
            reversedSentence = reversedSentence + " "
        }
    }
    
    return reversedSentence
}

func dictStuff() {
    var dict: [String: Int] = [:]
    var dict2: Dictionary<String, Int> = [:]
    
    dict["one"] = 1
    dict2["one"] = 1
    dict["two"] = 2
    dict2["two"] = 2
    dict["three"] = 3
    dict2["three"] = 3
    dict["four"] = 4
    dict2["four"] = 4
    
    print(dict)
    print(dict2)
    
    let allkeys = Array(dict.keys)
    print(allkeys)
    var set : Set<String> = []
    set.insert("dsdsd")
    print(set)
    
    let sam = "samboy"
    let ind  = sam.index(sam.startIndex, offsetBy:3)
    let ddf = sam[ind]
    
    let stringArray = ["b", "o", "y"]
    let stringArrayConcat = stringArray.reduce(""){ $0 + $1}
    print(stringArrayConcat)
    

    print(ddf)
}

func makeRequest(_ completion: @escaping (Result<(Data, URLResponse), Error>) -> Void) {
  URLSession.shared.dataTask(with: URL(string: "https://donnywals.com")!) { data, response, error in
    if let error = error {
      completion(.failure(error))
    } else if let data = data, let response = response {
      completion(.success((data, response)))
    }

    assertionFailure("We should either have an error or data + response.")
  }
    

}


func numPairsDivisibleBy60(_ time: [Int]) -> Int {
    var divisibleBy60Counter = 0
    var timeArray = time
//    for (index, el) in timeArray.enumerated() {
//        var timeRemoved = timeArray.remove(at: index)
//        var timeRemainedArray = timeArray
//        timeArray = timeRemainedArray
//        for timeRemained in timeArray {
//            let totalAt = timeRemoved + timeRemained
//            let isDivisibleby60 = totalAt % 60
//            if isDivisibleby60 == 0 {
//                divisibleBy60Counter = divisibleBy60Counter + 1
//            }
//        }
//    }
    //var dd = timeArray.first
    var timePos = 0
    while(timePos < timeArray.count) {
        var timeRemoved = timeArray.remove(at: timePos)
        for timeRemained in timeArray {
            let totalAt = timeRemoved + timeRemained
            let isDivisibleby60 = totalAt % 60
            if isDivisibleby60 == 0 {
                divisibleBy60Counter = divisibleBy60Counter + 1
            }
        }
        //timePos = timePos + 1
    }
    
    return divisibleBy60Counter
}

func permutations (_ n: Int, _ a: Array<Character>) -> Array<Character> {
    var ary = a
    if (n == 1){
        print(String(ary));
        return ary
    }
    for i in 0..<n-1 {
        ary = permutations(n-1, ary)
        ary.swapAt(n-1, (n%2 == 1) ? 0 : i)
    }
    return permutations(n-1, ary)
}


/* Given a string containing digits from 2-9 inclusive, return all possible letter combinations
 that the number could represent. Return the answer in any order.
A mapping of digit to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
 Input: digits = "23"
 Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
 Input: digits = ""
 Output: []
 Input: digits = "2"
 Output: ["a","b","c"]
 Constraints:
     0 <= digits.length <= 4
     digits[i] is a digit in the range ['2', '9']
 **/
class LetterCombinations {
    
    
    func letterCombinations(_ digits: String) -> [String] {
        var numWithLetters : Dictionary<String, String> = [:]
        numWithLetters["2"] = "abc"
        numWithLetters["3"] = "def"
        numWithLetters["4"] = "ghi"
        numWithLetters["5"] = "jkl"
        numWithLetters["6"] = "mno"
        numWithLetters["7"] = "pqrs"
        numWithLetters["8"] = "tuv"
        numWithLetters["9"] = "wxyz"
        
        let resultStringArray: [String] = []
        var letterArray: [String] = []
        
        if digits == "" {
            return resultStringArray
        }
        else {
            for el in digits {
                letterArray.append(numWithLetters[String(el)]!)
            }
            
            if letterArray.count == 1 {
                let seperatedLetter = letterArray[0].map{String($0)}
                return seperatedLetter
            }
            else {
                let re = dfg(letterArray)
                return re
            }
        }
    }
    
    func dfg(_ letterArray: [String]) -> [String] {
        var possibleLetters : [String] = []
        for (index, _) in letterArray.enumerated() {
            if index+1 < letterArray.count {
                if !possibleLetters.isEmpty {
                    let d2 = letterArray[index + 1]
                    let d1 = possibleLetters
                    possibleLetters.removeAll()
                    for a in d1 {
                        for b in d2 {
                            possibleLetters.append(String(a)+String(b))
                        }
                    }
                }
                else {
                    let d1 = letterArray[index]
                    let d2 = letterArray[index + 1]
                    for a in d1 {
                        for b in d2 {
                            possibleLetters.append(String(a)+String(b))
                        }
                    }
                }
                
                
            }
        }
        
        return possibleLetters
        
    }
}

/*Given two sorted integer arrays nums1 and nums2, merge nums2
 into nums1 as one sorted array.
The number of elements initialized in nums1 and nums2 are m and n respectively.
 You may assume that nums1 has a size equal to m + n such that it has enough
 space to hold additional elements from nums2.

Example 1:
Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
Output: [1,2,2,3,5,6]
Example 2:
Input: nums1 = [1], m = 1, nums2 = [], n = 0
Output: [1]*/

func mergeSortedArray(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    let numArray2 = nums2
    if n > 0 {
        var reversedArray = Array(nums1.reversed())
        for index in 0..<n {
            reversedArray[index] = numArray2[index]
        }
        nums1 = Array(reversedArray.reversed()).sorted()
    }
}
