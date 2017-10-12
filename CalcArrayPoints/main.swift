//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 10/12/17.
//  Copyright © 2017 Jingyu Yang. All rights reserved.
//

import Foundation

// all single number operations
func add(first : Int, second : Int) -> Int {
    return first + second
}

func subtract(first : Int, second : Int) -> Int {
    return first - second
}

func multiply(first : Int, second : Int) -> Int {
    return first * second
}

func divide(first : Int, second : Int) -> Int {
    return first / second
}

func genericNumOperation(op: String, num1: Int, num2: Int) -> Int {
    switch(op) {
    case "add":
        return add(first: num1, second : num2)
    case "subtract":
        return subtract(first: num1, second : num2)
    case "multiply":
        return multiply(first: num1, second : num2)
    case "divide":
        return divide(first: num1, second : num2)
    default:
        return 0
    }
}

// array operations
func add(nums : [Int]) -> Int {
    var sum = 0
    for num in nums {
        sum += num
    }
    return sum
}

func multiply(nums : [Int]) -> Int {
    var product = 1
    for num in nums {
        product *= num
    }
    return product
}

func count(nums : [Int]) -> Int {
    var count = 0
    for _ in nums {
        count += 1
    }
    return count
}

func avg(nums : [Int]) -> Int {
    return (add(nums : nums) / count(nums: nums))
}

func genericArrayOperation(op: String, nums: [Int]) -> Int {
    switch(op) {
    case "add":
        return add(nums: nums)
    case "count":
        return count(nums: nums)
    case "multiply":
        return multiply(nums: nums)
    case "avg":
        return avg(nums: nums)
    default:
        return 0
    }
}

// points operations
func addTuples(p1: (x1: Int, y1: Int), p2: (x2: Int, y2: Int)) -> (Int, Int) {
    return (p1.x1 + p2.x2, p1.y1 + p2.y2)
}

func subtractTuple(p1: (x1: Int, y1: Int), p2: (x2: Int, y2: Int)) -> (Int, Int) {
    return (p1.x1 - p2.x2, p1.y1 - p2.y2)
}

func addDictionary(p1: [String : Double], p2: [String : Double]) -> [String : Double] {
    var x = 0.0
    var y = 0.0
    if p1["x"] != nil && p2["x"] != nil {
        x = p1["x"]! + p2["x"]!
    }
    if p1["y"] != nil && p2["y"] != nil {
        y = p1["y"]! + p2["y"]!
    }
    return ["x":x, "y":y]
}
func subtractDictionary(p1: [String : Double], p2: [String : Double]) -> [String : Double] {
    var x = 0.0
    var y = 0.0
    if p1["x"] != nil && p2["x"] != nil {
        x = p1["x"]! - p2["x"]!
    }
    if p1["y"] != nil && p2["y"] != nil {
        y = p1["y"]! - p2["y"]!
    }
    return ["x":x, "y":y]
}

/* test cases
 
print(genericNumOperation(op: "add", num1: 15, num2: 5))
print(genericArrayOperation(op: "count", nums : [1, 2, 3, 4, 5]))
print(genericArrayOperation(op: "avg", nums : [1, 2, 3, 4, 5]))
print(genericArrayOperation(op: "multiply", nums : [1, 2, 3]))
print(add(nums: [10, 20, 30]))
print(addDictionary(p1 : ["x": 12, "y" : 2], p2 : ["x": 3, "y" : 4]))
print(addDictionary(p1 : [ "y" : 2], p2 : ["y" : 4]))
print(addDictionary(p1 : ["x": 12, "y" : 2], p2 : ["x": 3, "y" : 4]))
print(subtractDictionary(p1 : [ "x" : 9.2], p2 : ["x" : 2.3]))
print(subtractDictionary(p1 : [ "y" : 2], p2 : ["y" : 4]))
*/
