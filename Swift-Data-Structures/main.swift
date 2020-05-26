//
//  main.swift
//  Swift-Data-Structures
//
//  Created by Pavel Palancica on 5/26/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import Foundation

class StackTests {
    
    static var stack = Stack()
        
    static func appendToStack(items: [Int]) {
        for item in items {
            stack.push(item: item)
        }
        stack.printItems()
        print("---------")
    }
    
    static func appendToStack(item: Int) {
        stack.push(item: item)
        stack.printItems()
        print("---------")
    }
    
    static func removeTopFromStack() {
        if let topItem = stack.pop() {
            print("Removed: \(topItem)")
        } else {
            print("Stack is already Empty")
        }
        stack.printItems()
        print("---------")
    }
    
    static func runTests() {
        StackTests.appendToStack(items: [1, 2, 3])
        StackTests.appendToStack(item: 10)
        StackTests.removeTopFromStack()
        StackTests.removeTopFromStack()
        StackTests.removeTopFromStack()
        StackTests.removeTopFromStack()
        StackTests.removeTopFromStack()
    }
}

StackTests.runTests()

print("End...")

