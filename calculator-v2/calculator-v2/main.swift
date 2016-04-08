//
//  main.swift
//  hw3
//
//  Created by Barron, Brandon on 4/5/16.
//  Copyright © 2016 Barron, Brandon. All rights reserved.
//

import Foundation


// calculator

func add(x : Int, y : Int) -> Int {
    return x + y
}

func subtract(x : Int, y : Int) -> Int {
    return x - y
}

func multiply(x : Int, y : Int) -> Int {
    return x * y
}

func divide(x : Int, y : Int) -> Int {
    return x / y
}

func mathOp(x : Int, y : Int, op : (Int, Int) -> Int) -> Int {
    return op(x, y)
}

print(mathOp(1, y:2, op:add))
print(mathOp(1, y:0, op:add))
print(mathOp(10, y:10, op:add))

print(mathOp(1, y:2, op:subtract))
print(mathOp(1, y:1, op:subtract))
print(mathOp(1, y:0, op:subtract))

print(mathOp(2, y:2, op:multiply))
print(mathOp(1, y:0, op:multiply))

print(mathOp(1, y:2, op:divide))
print(mathOp(4, y:2, op:divide))
print(mathOp(0, y:2, op:divide))



// array fun

func add(nums : [Int]) -> Int {
    var result = 0
    nums.forEach { (n : Int) -> () in
        result += n
    }
    return result
}

func multiply(nums : [Int]) -> Int {
    var result = 1
    nums.forEach { (n : Int) -> () in
        result *= n
    }
    return result
}

func count(nums : [Int]) -> Int {
    return nums.count
}

func avg(nums : [Int]) -> Int {
    return add(nums) / nums.count
}

func mathOp(nums : [Int], op : ([Int]) -> Int) -> Int {
    return op(nums)
}

print(mathOp([1, 1], op:add))
print(mathOp([1, 0], op:add))

print(mathOp([1, 2], op:multiply))
print(mathOp([1, 0], op:multiply))

print(mathOp([1, 1], op:count))
print(mathOp([], op:count))
print(mathOp([1, 1, 1, 1], op:count))

print(mathOp([1, 1, 1], op:count))
print(mathOp([1, 2, 3], op:count))



// points

typealias Cartesian = (Int, Int)

func addPoints(p1 : Cartesian, p2 : Cartesian) -> Cartesian {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtractPts(p1 : Cartesian, p2 : Cartesian) -> Cartesian {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

func addPoints(p1 : [Int : Int], p2 : [Int : Int]) -> [Int : Int] {
    let point1 = (validate(p1.keys.first), validate(p1.values.first))
    let point2 = (validate(p2.keys.first), validate(p2.values.first))
    
    return [point1.0 + point2.0 : point1.1 + point2.1]
}

func validate(input : Int?) -> Int {
    switch input {
    case nil:
        return 0
    default:
        return input!
    }
}

print(addPoints((1, 1), p2: (1, 1)))
print(addPoints((0, 0), p2: (1, 1)))

print(subtractPts((1, 1), p2: (1, 1)))
print(subtractPts((0, 10), p2: (1, 1)))

print(addPoints([1 : 1], p2: [1 : 1]))
print(addPoints([0 : 1], p2: [1 : 100]))



