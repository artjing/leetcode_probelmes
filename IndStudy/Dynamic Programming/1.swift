//
//  1.swift
//  
//
//  Created by 董静 on 7/29/21.
//

import Foundation

// MARK -  Write the fibonacci recursive function without memoization.

class Solution {
    
    func fib(_ n: Int) -> Int {
        if n < 2 {
            return n
        }
        return fib(n - 1) + fib(n - 2)
    }
}
