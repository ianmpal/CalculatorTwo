//
//  main.swift
//  Calculator
//
//  Created by Ian Palmgren on 10/13/15.
//  Copyright © 2015 Ian Palmgren. All rights reserved.
//

import Foundation

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

//
//print(add(2, num2: 3))
//print(sub(5, num2: 3))
//print(mult(4, num2: 8))
//print(div(32,num2: 8))

func performOp(num1: Double, num2: Double, op: (Double, Double) -> Double) -> Double {
    return op(num1, num2)
}



//print(performOp(10, num2: 5, op: mult))

func addArray(numbers: [Int]) -> Int {
    var total: Int = 0
    for num in numbers {
        total *= num
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

print(avgArray(numbers))


func performOp(num1: Double, num2: Double, op: (Double, Double) -> Double) -> Double {
    return op(num1, num2)
}







