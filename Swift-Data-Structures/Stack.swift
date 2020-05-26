//
//  Stack.swift
//  Swift-Data-Structures
//
//  Created by Pavel Palancica on 5/26/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import Foundation

class Stack {
    var items: [Int] = []
    
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    func push(item: Int) {
        items.append(item)
    }
    
    func pop() -> Int? {
        guard !isEmpty else { return nil }
        let topItem = items.last
        items.removeLast()
        return topItem
    }
    
    func printItems() {
        for item in items.reversed() {
            print(item)
        }
    }
}
