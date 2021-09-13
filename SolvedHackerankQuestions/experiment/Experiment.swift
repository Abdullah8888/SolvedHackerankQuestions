//
//  Experiment.swift
//  SolvedHackerankQuestions
//
//  Created by Jimoh Babatunde  on 12/01/2021.
//  Copyright © 2021 Jimoh Babatunde. All rights reserved.
//

import Foundation

func putMe(_ condition : Bool, _ param : @autoclosure () -> ()) {
    
    if condition {
        print("It is true,\(param()) ")
    }
}

func putMe2(_ condition : Bool, _ param : (_ aa: Int, _ bb: Int) -> String) {
    
    if condition {
        print("It is true,\(param(2, 3)) ")
    }
}

struct PersonDtails {
    var name: String
    var occupation: String
    
    init(_ name : String) {
        self.name = name
        self.occupation = ""
    }
    
    init(_ name : String, _  occupation: String) {
        self.name = name
        self.occupation = occupation
    }
    
    func gg() {
        
    }
    mutating func changeName(_ newName: String) {
        name = newName
    }
}

struct StructExample{
    var myBook = "Math Text Book"
    
}

class ClassExample{
    var myBook = "Math Text Book"
}

func testStructAndClass() {
    var struct1 = StructExample()
    var class1 = ClassExample()
    var struct2 = struct1
    var class2 = class1
    
    
    struct1.myBook = "My book"
    class1.myBook = "My book"
    print("\(struct1.myBook) \(class1.myBook)")
    print("\(struct2.myBook) \(class2.myBook)")
    
}


func dispatchTest() {
    //Creating a serial dispatch queue
    let serialQueue = DispatchQueue(label: "swiftlee.serial.queue")

    serialQueue.async {
        print("Task 1 started")
        // Do some work..
        print("Task 1 finished")
    }
    serialQueue.async {
        print("Task 2 started")
        // Do some work..
        print("Task 2 finished")
    }
    /*
    Serial Queue prints:
    Task 1 started
    Task 1 finished
    Task 2 started
    Task 2 finished
     As you can see, the second task only starts after the first task is finished.
    */
    
    //Creating a concurrent dispatch queue
    let concurrentQueue = DispatchQueue(label: "swiftlee.concurrent.queue", attributes: .concurrent)

    concurrentQueue.async {
        print("Task 1 started")
        // Do some work..
        print("Task 1 finished")
    }
    concurrentQueue.async {
        print("Task 2 started")
        // Do some work..
        print("Task 2 finished")
    }

    /*
    Concurrent Queue prints:
    Task 1 started
    Task 2 started
    Task 1 finished
    Task 2 finished
    */
    
    //As you can see, the second task already starts before the first task is finished. This means that both tasks have run in parallel.
    
    
//    dispatch_queue_t q = dispatch_queue_create("deadlock queue", DISPATCH_QUEUE_SERIAL);
//
//    NSLog(@"1");
//    dispatch_async(q, ^{
//        NSLog(@"2");
//        dispatch_sync(q, ^{
//            NSLog(@"3");
//        });
//        NSLog(@"4");
//    });
//    NSLog(@"5");
}

