//
//  main.swift
//  Calculator
//
//  Created by Ian Palmgren on 10/13/15.
//  Copyright © 2015 Ian Palmgren. All rights reserved.
//

import Foundation


// Homework: Build a Calculator

func add(num1: Double, num2: Double) -> Double {
    return num1 + num2
}

func sub(num1: Double, num2: Double) -> Double {
    return num1 - num2
}

func mult(num1: Double, num2: Double) -> Double {
    return num1*num2
}

func div(num1: Double, num2: Double) -> Double {
    return num1 / num2
}


//print(add(2, num2: 3))
//print(sub(5, num2: 3))
//print(mult(4, num2: 8))
//print(div(32,num2: 8))

func performOp(num1: Double, num2: Double, op: (Double, Double) -> Double) -> Double {
    return op(num1, num2)
}



//print(performOp(10, num2: 5, op: mult))

// Homework: Array Fun

func addArray(numbers: [Int]) -> Int {
    var total: Int = 0
    for num in numbers {
        total += num
    }
    return total
}

func multArray(numbers: [Int]) -> Int {
    var total: Int = 1
    for num in numbers {
        total *= num
    }
    return total
}

func countArray(numbers: [Int]) -> Int {
    return numbers.count
}

func avgArray(numbers: [Int]) -> Double {
    var total: Double = 0
    for num in numbers {
        total += Double(num)
    }
    return total / Double(numbers.count)
}


var numbers: [Int] = [2, 3 , 4, 5]

//print(avgArray(numbers))


func performOp(arr1: [Int], op: ([Int]) -> Int) -> Int {
    return op(arr1)
}

//print(performOp(numbers, op: countArray))


// Homework: Points

let point1 = (1,2)
let point2 = (3,4)


func addPoints(point1: (Int, Int), point2: (Int, Int)) -> (newX: Int, newY: Int) {
    let newPoint = (point1.0 + point2.0, point1.1 + point2.1)
    return newPoint
}

func subPoints(point1: (Int, Int), point2: (Int, Int)) -> (newX: Int, newY: Int) {
    let newPoint = (point1.0 - point2.0, point1.1 - point2.1)
    return newPoint
}

print(addPoints(point1, point2: point2))
print(subPoints(point1, point2: point2))















