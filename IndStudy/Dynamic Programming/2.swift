//
//  1.swift
//  
//
//  Created by 董静 on 7/29/21.
//

import Foundation

// MARK -  Write the fibonacci recursive function without memoization.

class Solution {
    
    var cache = [Int:Int]()
    
    func fib(_ n: Int) -> Int {
        if n < 2 {
            return n
        }
        if let result = cache[n] {
            return result
        }
        let result = fib(n - 1) + fib(n - 2)
        cache[n] = result
        return result
    }
}
