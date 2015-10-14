//
//  main.swift
//  Calculator
//
//  Created by Ian Palmgren on 10/13/15.
//  Copyright © 2015 Ian Palmgren. All rights reserved.
//

import Foundation


// Homework: Build a Calculator

func add(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil {
        return num1! + num2!
    }
    return nil
}

func sub(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil {
        return num1! - num2!
    }
    return nil
}

func mult(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil {
        return num1! * num2!
    }
    return nil
}

func div(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil {
        return num1! / num2!
    }
    return nil
}


//print(add(2, num2: 3)!)  // 5
//print(sub(5, num2: 3)!)  // 2
//print(mult(4, num2: 8)!) // 32
//print(div(32,num2: 8)!)  // 4.0

func performOp(num1: Int?, num2: Int?, op: (Int?, Int?) -> Int?) -> Int? {
    return op(num1, num2)
}



//print(performOp(10, num2: 5, op: add)!)  // 15
//print(performOp(10, num2: 5, op: sub)!)  // 5
//print(performOp(10, num2: 5, op: mult)!) // 50
//print(performOp(10, num2: 5, op: div)!)  // 2



// Homework: Array Fun

func addArray(numbers: [Int]?) -> Int? {
    var total: Int = 0
    if numbers != nil {
        for num in numbers! {
            total += num
        }
    }
    return total
}

func multArray(numbers: [Int]?) -> Int? {
    var total: Int = 1
    for num in numbers! {
        total *= num
    }
    return total
}

func countArray(numbers: [Int]?) -> Int? {
    return numbers!.count
}

func avgArray(numbers: [Int]?) -> Int? {
    var total: Int = 0
    for num in numbers! {
        total += Int(num)
    }
    return total / numbers!.count
}


var numbers: [Int] = [2, 3 , 4, 5]

//print(addArray(numbers)!)   // 14
//print(multArray(numbers)!)  // 120
//print(countArray(numbers)!) // 4
//print(avgArray(numbers)!)   // 3.5



func performOp(arr1: [Int]?, op: ([Int]?) -> Int?) -> Int? {
    return op(arr1)
}



//print(performOp(numbers, op: addArray))   // 14
//print(performOp(numbers, op: multArray))  // 120
//print(performOp(numbers, op: countArray)) // 4
//print(performOp(numbers, op: avgArray))  // 3.5 (averages require doubles, but not acceptable here)



// Homework: Points

let point1 = (1,2)
let point2 = (3,4)


func addPoints(p1: (Int, Int)?, p2: (Int, Int)?) -> (newX: Int, newY: Int)? {
    let newPoint = (p1!.0 + p2!.0, p1!.1 + p2!.1)
    return newPoint
}

func subPoints(p1: (Int, Int)?, p2: (Int, Int)?) -> (newX: Int, newY: Int)? {
    let newPoint = (p1!.0 - p2!.0, p1!.1 - p2!.1)
    return newPoint
}

//print(addPoints(point1, p2: point2)!) // (4, 6)
//print(subPoints(point1, p2: point2)!) // (-2, -2)


func addPoints(d1: [String: Int]?, d2: [String: Int]?) -> (newX: Int, newY: Int)? {
    var newPoint = (newX: 0, newY: 0) // Defaults to 0 if one of the X or Y values is nil
    
    if d1 != nil && d2 != nil {
    
        if d1!.keys.contains("x") && d2!.keys.contains("x") {
            newPoint.0 = d1!["x"]! + d2!["x"]!
        }
        
        if d1!.keys.contains("y") && d2!.keys.contains("y") {
            newPoint.1 = d1!["y"]! + d2!["y"]!
        }
    }
    
    return newPoint
}

func subPoints(d1: [String: Int]?, d2: [String: Int]?) -> (newX: Int, newY: Int)? {
    var newPoint = (newX: 0, newY: 0) // Defaults to 0 if one of the X or Y values is nil
    
    if d1 != nil && d2 != nil {
        
        if d1!.keys.contains("x") && d2!.keys.contains("x") {
            newPoint.0 = d1!["x"]! - d2!["x"]!
        }
        
        if d1!.keys.contains("y") && d2!.keys.contains("y") {
            newPoint.1 = d1!["y"]! - d2!["y"]!
        }
    }
    
    return newPoint
}

var dict1 = ["x": 5, "y": 2]
var dict2 = ["x": 9, "y": 4]

//print(addPoints(dict1, d2: dict2)!) // (14, 6)
//print(subPoints(dict1, d2: dict2)!) // (-4, -2)
