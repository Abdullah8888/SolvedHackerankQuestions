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
