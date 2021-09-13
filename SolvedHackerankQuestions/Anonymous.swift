//
//  Anonymous.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 21/05/2020.
//  Copyright © 2020 Jimoh Babatunde. All rights reserved.
//

import Foundation

func sumArraysNumbers (array: [Int])-> Int{
    return array.reduce(0,+)
}

func takesIn () {
    while true {
        do{
            print("please enter the numbes = ")
            let numbers = (readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))
            //let ss = String(numbers).split(separator: "")
            let digits = numbers?.compactMap {$0.wholeNumberValue}
            
            let result  = sumArraysNumbers(array: digits!)
            print(result)
        }
        catch {
            print(error)
        }
    }
    
}

// Binary Search solved by recursive technique
func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 {return false}
    
    if key < array[0] || key > array[array.count-1] {
        print("\(key) is not in the dataset")
        return false
    }
    
    let midIndex = array.count/2
    if array[midIndex] == key {return true}
    
    if array[midIndex] > key {
        return binarySearch(array: Array(array[0..<midIndex]), key: key)
    }
    else {
        return binarySearch(array: Array(array[midIndex..<array.count]), key: key)
    }
}

//let ss = binarySearch(array: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], key: 3)
//print("the check is \(ss)")



func merge(left:[Int],right:[Int]) -> [Int] {
    var mergedList = [Int]()
    var left = left
    var right = right
    print("left count is \(left.count), \(right.count)")
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            mergedList.append(left.removeFirst())
        } else {
            mergedList.append(right.removeFirst())
        }
    }
    print(mergedList + left + right)
    return mergedList + left + right
}

func mergeSort(list:[Int]) -> [Int] {
    guard list.count > 1 else {
        return list
    }
    print("the count is \(list.count)")
    let leftList = Array(list[0..<list.count/2])
    let rightList = Array(list[list.count/2..<list.count])
    
    return merge(left: mergeSort(list:leftList), right: mergeSort(list:rightList))
}

//let dd = mergeSort(list: [2,5,8,23,9,34])


// Calculate Pairs in a dataset
var count = 0
var array = [1,2,3,3,5,4,34,4,6,4]
func calculatePairs() -> Int{
        for (i, _) in array.enumerated() {
            if (array.count > 0)  {
                let num = array.remove(at: i)
                if (array.contains(num)) {
                    count+=1
                    let indexOfMatchPairs = array.firstIndex(of: num)
                    array.remove(at: indexOfMatchPairs!)
                     _ = calculatePairs()
                }
                else{
                    _ = calculatePairs()
                }
            }

        }
return count

}



 //Get number of turn pages
var pageToTurnTo = 17440
var numderOfPages = 95073
var numberOfTurnsPage = 0
func getNumberOfTurnsPages () {
    let countingFromtheStart  = pageToTurnTo - 1
    let countingFromTheback = numderOfPages - pageToTurnTo

    if (countingFromtheStart < countingFromTheback) {
        if (countingFromtheStart == 1){
            numberOfTurnsPage = countingFromtheStart
        }
        else if (countingFromtheStart % 2 == 0) {
            numberOfTurnsPage = countingFromtheStart / 2
        }
        else{
            numberOfTurnsPage = (countingFromtheStart - 1) / 2
        }
    }
    else{
        if (countingFromTheback == 1){
            numberOfTurnsPage = 0
        }
        else if (countingFromTheback % 2 == 0) {
            numberOfTurnsPage = countingFromTheback / 2
        }
        else{
            numberOfTurnsPage = (countingFromTheback - 1) / 2
        }
    }
}

//Example of Generics
struct MyArray<T> {
    func printArray(_ array: [T]){
        for item in array {
            print(item, separator: "/n")
        }
    }
}

var ss = MyArray<Int>()
//ss.printArray([1,4,5,3,4])

//class Rectangle: Shape {
//    func area<T>() -> T {
//        return 2 + 3
//    }
//}
//var ss = Rectangle()
//print("the area is \(ss.area())")


//when to use mutating
struct Stack {
    public private(set) var items = [Int]() // Empty items array

    mutating func push(_ item: Int) {
        items.append(item)
    }

    mutating func pop() -> Int? {
        if !items.isEmpty {
            return items.removeLast()
        }
        return nil
    }
}
//var stack = Stack()
//stack.push(4)
//stack.push(78)
//print(stack.items) // [4, 78]
//stack.pop()
//stack.items // [4]


//Generic functions
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}


class Node<T> {

    var data: T
    var leftNode: Node?
    var rightNode: Node?

    init(data: T, leftNode: Node? = nil, rightNode: Node? = nil) {
        self.data = data
        self.leftNode = leftNode
        self.rightNode = rightNode
    }

}

class BST<T: Comparable & CustomStringConvertible> {

    private var rootNode: Node<T>?

    func addNode(_ value: T) {
        let node = Node(data: value)
        if let rootNode = self.rootNode {
            self.insert(rootNode, node)
        } else {
            self.rootNode = node
        }
    }


    private func insert(_ root: Node<T>, _ node: Node<T>) {
        if root.data > node.data {
            if let leftNode = root.leftNode {
                self.insert(leftNode, node)
            } else {
                root.leftNode = node
            }
        } else {
            if let rightNode = root.rightNode {
                self.insert(rightNode, node)
            } else {
                root.rightNode = node
            }
        }
    }

    func printTree() {
        self.inorder(self.rootNode)
    }


    private func inorder(_ node: Node<T>?) {
        guard let _ = node else { return }
        self.inorder(node?.leftNode)
        print("\(node!.data)", terminator: " ")
        self.inorder(node?.rightNode)
    }
}

let numberList : Array<Int> = [6,12]
var root = BST<Int>()
//for number in numberList {
//    root.addNode(number)
//}
//should print sorted tree
//root.printTree()

func st(_ str: String) -> String {
    //var myArray = Array(str)
    var ss = str.lowercased()
    var theElement = ""
    let firstLetter = str.first?.lowercased()
    _ = ss.remove(at: str.startIndex)
    print("the ss is \(ss)")
    if ss.contains(firstLetter!){
        return st(ss)
    }
    
    print("the element is \(String(firstLetter!))")
    theElement = String(firstLetter!)
    print("dddd is \(theElement)")
    return theElement
}

//var str = st("Stresstre")
//print("the result is \(str)")


//Resistor color code that takes in ohms and return its color code
class ResistorColorCodes {
    let numberCodes = ["black", "brown", "red", "orange","yellow", "green", "blue", "violet", "grey", "white"]
    func takeOhms(_ ohms: String){
        var num: String
        if ohms.contains(".") && ohms.contains("k") {
            num = self.getRealNumbers(ohms)
            let colorCodes = self.getColorCodes(num)
            let result = (colorCodes.0, colorCodes.1, "red", "gold")
            print(result)
            
            
        }
        else if ohms.contains("k") {
            num = self.getRealNumbers(ohms)
            let colorCodes = self.getColorCodes(num)
            let result = (colorCodes.0, colorCodes.1, num.count == 2 ? "orange" : "yellow", "gold")
            print(result)
        }
        else if ohms.contains("M"){
            num = self.getRealNumbers(ohms)
        }
        else {
            num = self.getRealNumbers(ohms)
            let colorCodes = self.getColorCodes(num)
            let result = (colorCodes.0, colorCodes.1, num.count == 2 ? "black" : "brown", "gold")
            print(result)
        }
        print("the num is \(num)")
        //self.getColorCodes(num)
    }
    
    func getRealNumbers(_ ohms: String) -> String {
        var number = ""
        for num in ohms{
            if num.isNumber {
                number = number + String(num)
            }
        }
    return number
    }
    
    func getColorCodes(_ ohms: String) -> (String, String) {
        var firstDigit: String = ""
        var secondDigit: String = ""
        if ohms.count == 2 {
            var nums = ohms.map{$0}
            firstDigit = numberCodes[nums[0].wholeNumberValue!]
            secondDigit = numberCodes[nums[1].wholeNumberValue!]
        }
        else if ohms.count == 3 {
            var nums = ohms.map{$0}
            firstDigit = numberCodes[nums[0].wholeNumberValue!]
            secondDigit = numberCodes[nums[1].wholeNumberValue!]
        
        }
    return (firstDigit, secondDigit)
        
    }
}

//var dd = ResistorColorCodes()
//dd.takeOhms("22k ohms")

//var ddd = 22


var myString = "This is a boy going to school"
//var sampleArray = ["red", "red", "orange", "gold"]
//let dd = sampleArray.enumerated().compactMap { (ddd) -> String in
//    var dd = ""
//    if ddd.offset >= 1 && ddd.offset <= 2 {
//       dd =  ddd.element
//    }
//    return dd
//}
//
//var ss = ""



var myStringArray = myString.compactMap{$0}
//print(myStringArray)
//for i in 5...7 {
//    //print(i)
//    ss = ss + myStringArray.remove(at: i).description
//    //i = i + 1
//    //print(ss)
//}
//print("element is \(myStringArray.remove(at: 2))")
//print(myStringArray)
//print("element is \(myStringArray[2...4])")
var wannajoin = myStringArray[2...4]
var df = Array(wannajoin)
var ds = String(df)
//print("the ds is \(ds)")
//print("the stuff are \(ss)")

let start = myString.index(myString.startIndex, offsetBy: 2)
let end = myString.index(myString.startIndex, offsetBy: 7)
let range = start..<end
var tt = myString[range]



//print("the new string is \(tt.description)")


//print(dd2)
//sampleArray.forEach {print($0, ":", $1)}

//print("the stuff is \(dd)")

var ff = myString.enumerated().filter


//Grading Student
func finalGrade(grades: [Int]) -> [Int] {
    print(grades)
    // Write your code here
    var finalGrade : [Int] = []
    for grade in grades {
        if grade >= 38 {
            var nextMultipleOfFive  = getNextMultipleOfFive(num: grade)
            var dd = nextMultipleOfFive - grade
            var checkd = check(num: dd)
            if checkd {
                finalGrade.append(nextMultipleOfFive)
            }
            else {
                finalGrade.append(grade)
            }
            
        }
        else {
            finalGrade.append(grade)
        }
    }
    return finalGrade
}

func getNextMultipleOfFive(num: Int) -> Int {
    var remainder = num % 5
    var nextMultipleOfFive = 0
    if remainder != 0 {
        if remainder < 5 {
            remainder = 5 - remainder
        }
        else {
            remainder = remainder - 5
        }
        nextMultipleOfFive = remainder + num
        return nextMultipleOfFive
    }
    return num
}

func check(num: Int) -> Bool {
    if num < 3 {
        return true
    }
    return false
    
}

//print(finalGrade(grades: [3,4,38,48]))
//End of grading students

func anonymous()   {
        print("ready")
        var dresult : [Int] = []
        var arr = [0, 0, 2, 3, 7, 1];
        //print(aa.capacity)
        //print(aa.capacity)
        //print(aa.count-4)
        //aa = aa.sorted()
        //var dddd = aa[(aa.count-4)...aa.count-1];
        //print(dddd)
        //
        //aa = aa.sorted()
        //for i in 1...4 {
        //
        //}
        //var drt: Int = 0
        //for i in dddd {
        //    drt = drt + i
        //    print(i)
        //}
        //print(drt)

        var sortedArray = arr.sorted()
        var dbf = sortedArray[(sortedArray.count-4)...sortedArray.count-1];
        

        var total: Int = 0
        for i in dbf {
            total = total + i
            print(i)
        }

        var sampleA = "abcababcababcab"
        var cc = 1
        while true {
            let index = sampleA.index(sampleA.startIndex, offsetBy: cc)
            var subs1 = sampleA[...index]
            let index21 = sampleA.index(index, offsetBy: cc + 1)
            let index22 = sampleA.index(sampleA.startIndex, offsetBy: cc + 2)
            var subs2 = sampleA[...index21]
            print(subs1)
            print(subs2)
            break
        //    if subs1 == subs2 {
        //        print("yes")
        //        break
        //    }
        //    else {
        //        print("no")
        //        cc = cc + 1
        //        //break
        //    }
        }



}

