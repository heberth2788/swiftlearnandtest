//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 26/03/25.
//

import Foundation

func greetA(to name: String, currDate date: String) -> String {
    return "Hello, \(name), today is \(date)!"
}

func greetB(name: String, date: String) -> String {
    return "Hello, \(name), today is \(date)!"
}

func greetC(_ name: String, _ date: String) -> String {
    return "Hello, \(name), today is \(date)"
}

func greetD(_ name: String, currDate date: String) -> String {
    return "Hello, \(name), today is \(date)"
}

func useGreetFunctions() {
    var myStr: String
    
    myStr = greetA(to: "Heberth Deza", currDate: "Wed 26 Mar 2025")
    myStr = greetB(name: "Heberth Deza", date: "Wed 26 Mar 2025")
    myStr = greetC("Heberth Deza", "Wed 26 Mar 2025")
    myStr = greetD("Heberth Deza", currDate: "Wed 26 Mar 2025")
    
    print(myStr)
}

//func calcMinMaxSum(nums: [Int]) -> (Int, Int, Int) {
func calcMinMaxSum(nums: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = nums[0]
    var max = nums[0]
    var sum = 0
    
    for num in nums {
        if num < min {
            min = num
        } else if num > max {
            max = num
        }
        sum += num
    }
    
    // return (min: min, max: max, sum: sum)
    return (min, max, sum)
}

func useTuples() {
    let myNums: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    let myTupleA = calcMinMaxSum(nums: myNums)
    let myTupleB: (Int, Int, Int) = calcMinMaxSum(nums: myNums)
    let myTupleC: (min: Int, max: Int, sum: Int) = calcMinMaxSum(nums: myNums)
    
    print("min: \(myTupleC.min), max: \(myTupleC.max), sum: \(myTupleC.sum)")
    print("min: \(myTupleC.0), max: \(myTupleC.1), sum: \(myTupleC.2)")
}

func returnFunc() -> ((Int) -> Int) {
    func addOne(_ x: Int) -> Int {
        return x + 1
    }
    return addOne
}

func useReturnFunc() {
    let myFuncA = returnFunc()
    let myFuncB: ((Int) -> Int) = returnFunc()
    
    var myInt = myFuncA(1988)
    myInt = myFuncB(1987)
    
    print(myInt)
}
