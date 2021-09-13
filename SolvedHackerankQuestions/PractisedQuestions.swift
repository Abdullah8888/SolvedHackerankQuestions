//
//  PractisedQuestions.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 20/06/2020.
//  Copyright © 2020 Jimoh Babatunde. All rights reserved.
//

import Foundation

func checkMe(_ word: String) -> String {
    if word.hasPrefix("ls") {
        return word
    }
    else {
        return "ls " + word
    }
    
}

func addAll(_ numbers: [Int]) -> Int {
    let sum = numbers.reduce(0) { (x, y) -> Int in
        print("x is \(x)")
        print("y is \(y)")
        return x + y
    }
    
    return sum
}

func addAll3(_ numbers: [Int]) -> Int {
    let sum = numbers.reduce(0, +)
    let sum1 = numbers.reduce(0) {$0 + $1}
    let sum2 = numbers.reduce(0) { (initialElement , nextElement) -> Int in
        let dd = initialElement + nextElement
        return dd
    }
    print("the sum is \(sum2)")
    return sum
}

func filterFunction(_ numbers: [Int]) -> [Int]{
    
    let result = numbers.filter { (num) -> Bool in
        return num % 2 == 0
    }
    return result
}

//Write a Swift program to change the first and last character of a given string.
func swapChars(_ word: String) {
    var words = word
    let firstLetter = words.remove(at: words.startIndex)
    let lastLetter = words.popLast()
    let dd = "\(lastLetter!)\(words)\(firstLetter)"
    print(dd)
    //print("the first is \(firstLetter) and second is \(lastLetter)")
}

func ddf(_ word: String) {
    var words = word
    let dd = words.prefix(3)
    print(dd)
    let gh = words.removeLast()
    print(gh)

}

func getLargestNumber () {
    let nums = [5,6,77,3]
    var lastnum = nums.sorted()
    var lasttwo = lastnum.suffix(2)
    print("the last 2 is \(lasttwo)")
    print("the last num  is \(lastnum.popLast()!)")
}

func chageLast3ToUpperCase() {
    var word = "abcdefg"
    
    //print(word.startIndex)
    let last3Index = word.index(word.startIndex, offsetBy: word.count - 3)
    let last3 = word[last3Index]
    print(last3)
    
    let whereToPut = word.index(word.startIndex, offsetBy: 2)
    word.insert(last3, at: whereToPut)
    print("where \(whereToPut) ")
    print(word)
    
    
    //dd
    let last33 = word.suffix(3)
    let df = word.index(word.startIndex, offsetBy: word.count - 3)
    let dfg = word.index(after: df)
    let dfr = word.remove(at: dfg)
    let fg = word[..<df]
    print(fg)

    //word.removeLast(3)
    //word.insert(ddg, at: word.index(after: ff))

    //print(dd)
    print(fg +  last33.uppercased())
    
}

func checkFirst4Ifis7() {
    let array = [3,7,5,3,5,6,7]
//    let df = array.sorted().last
//    let dd = Array(repeating: df!, count: array.count)
//    print(dd)
    
    let first4 = array.prefix(4)
    var dd = first4.filter(){$0 == 2}
    print(first4)
    if first4.contains(7) {
        print("yes it has")

    }
    else {
        print("No")
    }

}

fileprivate extension String {
    func indexOf(char: Character) -> Int? {
        return firstIndex(of: char)?.utf16Offset(in: self)
    }
}

func getNextLetterOfFirstOccurenceOfa() {
    let word = "iemmlslakad"
    
//    let gg = word.enumerated().compactMap{(a, b) in
//        print("the a is \(a) and b is \(b)")
//
//    }
    
    if word.contains("a") {
        let firstIndexOfa = word.firstIndex(of: "a")!.utf16Offset(in: "a")
        let nextIndex = firstIndexOfa + 1
        let indexOfNextLetter = word.index(word.startIndex, offsetBy: nextIndex)
        let nextLetter = word[indexOfNextLetter]
        print(nextLetter)
    }
    
    // Another Way check below
    
//    for (index, el) in word.enumerated() {
//        if el == "a" {
//            let indextheElementAfterA = word.index(word.startIndex, offsetBy: index + 1)
//            let ell = word[indextheElementAfterA]
//            print("the element is \(ell)")
//            break
//        }
//
//    }
}

func formStringFromLast2lettersOfString() {
    let word = "Python"
    let twoLetters = word.suffix(2)
    let newFormedString = String.init(repeating: String(twoLetters), count: 2)
    print(newFormedString)
}

func formStringwithfirst2oftheGivenString() {
    let word = "swift"
    
    let index = word.index(word.startIndex, offsetBy: 2)
    let wordRemaining = word[index...]
    let newWord = "\(wordRemaining)\(word.prefix(2))"
    print(newWord)
}

func formStringWith2middleOfGivenString() {
    var word = "Python"
    let nums: [Int] = [4,34,2,4]
    let string = nums.map{String($0)}
    let de = string.reduce(""){$0 + $1}
    print(de)
    print(string)
    if word.count % 2 == 0 {
        let midInde = word.count/2
        let preMidIndex = midInde - 1
        let letter1 = word.remove(at: word.index(word.startIndex, offsetBy: midInde))
        let letter2 = word.remove(at: word.index(word.startIndex, offsetBy: preMidIndex))
        print("\(letter2)\(letter1)")
        
    }
}

func checkfor3twice() {
    var array = [3,5,6,4,3,6,3,3,3,34,3,54,4,3]
    
//    var gg = [4,3,4]
//    let tg = array.append(gg)
    var cc = 0
    _ = array.filter{ (num) -> Bool in
        if num == 3 {
            cc += 1
        }
    return false
        
    }
    
    print(cc)
//    let dd = array.filter{$0 == 3}
//    var count = 0
//    for (index, num) in dd.enumerated() {
//        var nextIndex = index + 1
//        if nextIndex < dd.endIndex && num == 3 && dd[nextIndex] == 3 {
//            count += 1
//        }
//    }
//    print(count)
}

func testing(_ num: inout Int){
    num = 3
    let sample1 = Set<String>()
    let sample2 : Set = [3,4,2]
//    let df : Set<Int>
//    df = [4,5,6]
    let sample3 =  [String: Int]()
}

func lastQuestion(_ a: String, _ b: String) -> String {
    let word = a + b
    var set = Set<String>()
    for letter in word {
        set.insert(letter.description)
    }
    let joinedString = set.joined()
    return joinedString
}

func concateString(_ a: String, _ b: String) -> String {
    
    let joinedStrings = a + b
    var set = Set<Character>()
    let newString = joinedStrings.filter{set.insert($0).inserted}
    return newString
}

func testAdjacentArrayIntegers(_ arrayInts: [Int]) -> Bool {
    for i in 0..<arrayInts.count-2 {
        if arrayInts[i + 1] == arrayInts[i] + 1 && arrayInts[i + 2] == arrayInts[i] + 2 {
            return true
        }
    }
    return false
}

func swapTwoInts(_ a:  inout [Int], _ b: inout Int) {
    let temporaryA = a.remove(at: 2)
    //a = b
    b = temporaryA
}

// Complete the minimumSwaps function below.
func minimumSwaps(_ arr: [Int]) -> Int {
    var array = arr
    var numberOfSwaps = 0
    for (i, _) in array.enumerated() {
        
        var index  = i + 1
        var currentMinIndex = i
        var currentMinElement = array[i]
        
        while index < array.count {
            if currentMinElement > array[index] {
                currentMinElement = array[index]
                currentMinIndex = index
            }
            index+=1
        }
        if (currentMinIndex != i) {
            array[currentMinIndex] = array[i]
            array[i] = currentMinElement
            numberOfSwaps+=1
        }
    }
    return numberOfSwaps
}

func dump() {
    var dd = [Int](repeating: 6, count: 4)
    let ff = Array(repeating: [4,5], count: 3)
    print(ff)
    print(dd)
 var anArray = [[1,0,0], [0,1,0], [0,0,1]]
  for (i,row) in ff.enumerated() {
    for (j,cell) in row.enumerated() {
      print("\(ff[i][j])")
    }
  }
}

// Complete the minimumSwaps function below.
func minimumSwaps2(_ arr: [Int]) -> Int {
    var array = arr
    var numberOfSwaps = 0
    for (i, _) in array.enumerated() {
        var index  = i + 1
        var currentMinElement = array[i]
        while index < array.count {
            if currentMinElement > array[index] {
                //var dd = currentMinElement
                currentMinElement = array[index]
                array[i] = array[index]
                 array[index] = currentMinElement
                numberOfSwaps+=1
            }
            index+=1
        }
        print(array)
    }
    return numberOfSwaps
}

func sockMerchant() -> Int {
     for (i, _) in array.enumerated() {
            if (array.count > 0)  {
                let num = array.remove(at: i)
                if (array.contains(num)) {
                    count+=1
                    let indexOfMatchPairs = array.firstIndex(of: num)
                    array.remove(at: indexOfMatchPairs!)
                    _ = sockMerchant()
                }
                else{
                    _ = sockMerchant()
                }
            }
            
        }
    return count
}

func countValley(s: String) -> Int {
    var numValleys = 0
    var altitude = 0
    
    for char in s {
        if(char == "U") {
            if(altitude == -1) {
                numValleys += 1;
            }
            altitude += 1;
        }
        // Step down
        else {
            altitude -= 1;
        }
    }
    return numValleys
}

func adjacent_numbers(array_nums: [Int]) -> Bool {
    for x in 0..<array_nums.count-2 {
        if array_nums[x] == array_nums[x+1] - 1 && array_nums[x+1] == array_nums[x+2] - 1
        {
            return true
        }
    }
    
    return false
}

// Complete the jumpingOnClouds function below.
func jumpingOnClouds(c: [Int]) -> Int {
    var numberOfClouds = 0
    var index = 0
    while (index < c.count-1) {
        print(index)
      
        if index+1 < c.endIndex && c[index] == 0 && c[index] == c[index+1] && c[index+1] == c[index+2] {
            numberOfClouds+=1
            index = index + 2

        }
        else if  index+1 < c.endIndex && c[index]==0 && c[index] == c[index + 1] && c[index + 2] != 0 {
            numberOfClouds+=1
            index = index + 1

        }
        else if  index+1 < c.endIndex && c[index]==0 && c[index + 1] == 1 && c[index + 2] == 0 {
            numberOfClouds+=1
            index = index + 2

        }
        else {
            index = index + 1
        }
        
    }
    
    return numberOfClouds
    
}

func jumpingOnClouds2(c: [Int]) -> Int{
    var numberOfJumps = 0
    var countZero = 0
    
    for (index, el) in c.enumerated() {
        //print(  index)
        if c[index] == 1 {
        
            if countZero > 2 && c[index-1] == 0 {
                numberOfJumps-=1
                numberOfJumps+=1
                countZero = 1
                print("index is \(index)")
                
            }
            
            
            continue
        }
        
        if c[index] == 0 {
            countZero+=1
            print("here countZero is \(countZero)")
            if countZero == 2 {
                print("yes")
                numberOfJumps+=1
                countZero = 1
            }
            
            
         

        }
        
      
        
        print(index)
    }
    return numberOfJumps
    
}

func jumpingOnClouds3(c: [Int]) -> Int{
    
    var minJump = 0
    var index  = 0
     while index < c.count - 1 {
        if (index + 2 < c.count) &&
            (c[index + 2] == 0) {
            index += 2
        } else {
            index += 1
        }
        minJump += 1
    }
    return minJump
}

// Complete the beautifulDays function below.
func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var numberOfBeautifulDays = 0
    let nums = i...j
    let diffArray = nums.compactMap { (num) -> Int? in
        var stringNumI = String(num)
        stringNumI = String(stringNumI.reversed())
        let reversedNumber = Int(stringNumI)!
        let diff = abs(num - reversedNumber)
//        if diff % k == 0 {
//            numberOfBeautifulDays+=1
//        }
        return diff
    }
    var dds = diffArray.filter { $0 % k == 0 }
    print(dds.count)
//    for num in nums {
//        if num > 10  {
//            var stringNumI = String(num)
//            stringNumI = String(stringNumI.reversed())
//            let reversedNumber = Int(stringNumI)!
//            let diff = abs(num - reversedNumber)
//            if diff % k == 0 {
//                numberOfBeautifulDays+=1
//            }
//
//        }
//    }
    return numberOfBeautifulDays
}

// Complete the repeatedString function below.
func repeatedString(s: String,  n:  Int) -> Int {
    var totalA = 0
    //var numberOfRepetition = n
    let wholeNumber = n / s.count
    var remainder = n % s.count
    print("remainder is \(remainder)")
    var countA = 0

    for ch in s {
        if ch == "a" {
            countA += wholeNumber
             print("the whole dd is \(countA)")
        }
        print("the whole is \(countA)")
    }
   
    remainder = (s.count > n) ? remainder - 1 : remainder
    totalA = countA + remainder
//    var repeatedString = ""
//    var prefixString = ""
//    var countA = 0
//    if n < 1000000 {
//         repeatedString = String(repeating: s, count: n)
//        prefixString = repeatedString.prefix(n).description
//
//        for ch in prefixString {
//            if ch == "a" {
//                countA+=1
//            }
//        }
//
//    }
//    else {
////        for ch in s {
////            if ch == "a" {
////                countA+=1
////            }
////        }
////        countA = countA * n
//
//    }
    print(totalA)
    print(remainder)
    //print(df)
    return totalA
}

// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
    var array = a
  
    var dff = 1...d
     
    dff.forEach { (_) in
        let firstEl = array.prefix(1)
        _ = array.remove(at: 0)
        array.append(firstEl[0])
    }
    //array = tg
    
//    for _ in 1...d {
//        let firstEl = array.prefix(1)
//        _ = array.remove(at: 0)
//        array.append(firstEl[0])
//
//    }

    return array
}

// Complete the checkMagazine function below.
func checkMagazine(magazine: [String], note: [String]) -> Void {
    var check = false
    var magaArray = magazine
    let result  = note.filter{ (noteEl) -> Bool in
        if magaArray.contains(noteEl) {
            check = true
            magaArray.remove(at: magaArray.firstIndex(of: noteEl)!)
        }
        else {
            check = false
        }
        return check
    }
    if result == note {
        print("Yes")
    }
    else{
        print("No")
    }

}
func checkMagazine1(magazine: [String], note: [String]) -> Void {
    var check = false
    var ty = magazine
    var magaArray = magazine
    let set1 = Set(magazine)
    let set2 = Set(note)
    let ff = set2.subtracting(set1)
    //print(ff)
    
    let gg = note.filter { (el) -> Bool in
        if magaArray.contains(el) {
            check = true
            magaArray.remove(at: magaArray.firstIndex(of: el)!)
        }
        else {
            check = false
        }
        return check
    }
    print(gg)
    if gg == note {
        print("d")
    }
    else {
        print("r")
    }
    //print(gg)
    
    let gh = note.map { (ggs) -> String in
        if ty.contains(ggs) {
            check = true
            ty.remove(at: ty.firstIndex(of: ggs)!)
            //print(ty)
        }
        
        if check {
            print(ggs)
            check = false
            return ggs
        }
        return ggs
    }
    print(gh)
    //let arr = ["b","c","a"]
    //let ind = arr
//    let indexOfA = arr.firstIndex(of: "a") // 0
//    let indexOfB = arr.lastIndex(of: "a") // 3
//    print(indexOfA)
//    print(indexOfB)

}

func arrayToDict(){
    let names = ["Harry", "Ron", "Hermione", "kon"]
    let note = ["Harry", "Ron", "Hermione"]
    var check = false
    var dd = Dictionary<String, String>()
    var df = [String : Int]()
    var ff = Set<String>()
    var dict: [Int : Int] = [:]
    dict[0] = 9
    let dd3 = Array(dd.keys)
    
    
    //let scoreboard = names.reduce(into: [:]) { $0[$1] = 1 }
    let dictNames = names.reduce(into: [String: Int]()) { (curr, next) in
        curr[next, default: 0] += 1
    }
    
    let dictNote = note.reduce(into: [String: Int]()) { (curr, next) in
        curr[next, default: 0] += 1
    }
    //let dfdfdf = names.reduce(into: Set<String>()) { $1.insert($1, at: $1.startIndex)}

    for (key , _) in dictNote {
        var dd = dictNames[key]
        var df = dictNote[key]!
        if dictNames.keys.contains(key) && (dictNames[key] == dictNote[key] || dictNames[key]! >= dictNote[key]!) {
            check = true
        }
        else {
            check = false
        }
        if check == false {
            break
        }
    }
    
    if check {
        print("Yes")
    }
    else {
        print("No")
    }
    
}

// Complete the twoStrings function below.
func twoStrings(s1: String, s2: String) -> String {
    var result = ""
    let arr1 = s1.split(separator: " ")
    let arr2 = s2.split(separator: " ")
    for (index, el) in arr1.enumerated() {
        let set1 = Set(arr1[index])
        let set2 = Set(arr2[index])
        let intersection = set1.intersection(set2)
        if intersection.isEmpty {
            result = result +  "NO"
        }
        else {
            result = result + "YES"
        }

    }
    return result

}

func binarySearch(array: [Int], target: Int) -> Int {
    var max = array.count
    var min = 0
    while max >= min {
        let midIndex = (max + min)/2
        if array[midIndex] == target {
            return target
        }
        else {
            if array[midIndex] > target {
                max = midIndex - 1
            }
            else {
                min = midIndex + 1
            }
        }
    }
    return -1
}

//int i = 0;
//int m = sqrt(n); //initializing block size= √(n)
//
//while(a[m] <= item && m < n) {
//   // the control will continue to jump the blocks
//   i = m;  // shift the block
//   m += sqrt(n);
//   if(m > n - 1)  // if m exceeds the array size
//      return -1;
//}
//
//for(int x = i; x<m; x++) { //linear search in current block
//   if(a[x] == item)
//      return x; //position of element being searched
//}
//return -1;
func jumpSearch(array: [Int], target: Int) -> Int {
    let start = CFAbsoluteTimeGetCurrent()
    var blockStartIndex = 0;
    let block = sqrt(Double(array.count))// initializing optimal jump size, note array gat to be sorted
    var blockEndIndex = Int(block) - 1
    while array[blockEndIndex] < target && blockEndIndex < array.count {
        blockStartIndex = blockEndIndex
        blockEndIndex += Int(sqrt(Double(array.count)))
        blockEndIndex -= 1
        if blockEndIndex > array.count {
            return -1
        }
    }
    
    for index in blockStartIndex...blockEndIndex {
        if array[index] == target {
            return index;
        }
    }
    
    let diff = CFAbsoluteTimeGetCurrent() - start
    print("Took \(diff) seconds")
    return -1
}


/**Triple Double
Have the function TripleDouble(num1,num2) take both parameters being passed, and return 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2. For example: if num1 equals 451999277 and num2 equals 41177722899, then return 1 because in the first parameter you have the straight triple 999 and you have a straight double, 99, of the same number in the second parameter. If this isn't the case, return 0.*/

func tippleAndDoubleNumber(num1: String,  num2: String) {
    let nums1 = num1.map({$0})
    let nums2 = num2.map({$0})
    var checkTripple = false
    var checkDouble  = false
    for (index, el) in nums1.enumerated() {
        if index+2 < nums1.count-1 {
            //print("\(nums1[index]) , \(nums1[index+1]),  \(nums1[index+2])")
            if nums1[index] == nums1[index+1] && nums1[index+1] == nums1[index+2] {
                checkTripple = true
                print("\(nums1[index]) , \(nums1[index+1]),  \(nums1[index+2])")
               // break
            }
        }
        
    }
    
    for (index, el) in nums2.enumerated() {
        
        if index+1 < nums2.count-1 {
            if el == nums2[index+1] {
                checkDouble = true
            }
        }
    }
    if checkTripple && checkDouble {
        print("yes")
    }
    else {
        print("no")
    }
}


func squareArray(totalArea: Double) {
    var total = totalArea
    var result: [Int] = []
    while total != 1 {
        let sq = Int(sqrt(total))
        let area = sq * sq
        result.append(area)
        total = total - Double(area)
    }
    result.append(1)
    print(result)
}

//Convertion of number to binary using recursive method
var remainderString = ""
func convertToBinary(_ num: Int) -> String {
    var dividend = num
    
    if dividend == 1 {
        remainderString.append("1")
        remainderString = String(remainderString.reversed())
        return remainderString
        
    }
    else {
        let remainder = dividend % 2
        dividend = dividend / 2
        remainderString.append(String(remainder))
        //print(remainderString)
        return convertToBinary(dividend)
    }
    //var dd = ""
}

func binaryGap() {
    var indexOf1s: [Int] = []
    var countZeros: [Int] = []
    var count = 0
    let binaryDigits = "100000"
    if binaryDigits.count > 2 {
        for binaryDigit in binaryDigits {
            
            if binaryDigit == "1" {
                indexOf1s.append(count)
            }
            count = count + 1
        }
        for (index, _) in indexOf1s.enumerated() {
            if index+1 < indexOf1s.count  {
                let indexAfter = binaryDigits.index(after: binaryDigits.startIndex)
                let startIndex = binaryDigits.index(indexAfter, offsetBy: indexOf1s[index])
                let endIndex = binaryDigits.index(binaryDigits.startIndex, offsetBy: indexOf1s[index+1])
                let zeros = binaryDigits[startIndex..<endIndex]
                if zeros.contains("0") {
                    countZeros.append(zeros.count)
                }
            }
            
        }
        let max = countZeros.max()
        
        guard let total = max else { return }
        print(total)
    }
    
}

