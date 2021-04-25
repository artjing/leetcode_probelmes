//
//  leetcode343.swift
//  
//
//  Created by 董静 on 4/2/21.
//

import Foundation
class Solution {
    func integerBreak(_ n: Int) -> Int {
        if n < 4 { return n - 1 }
        var results = [Int](repeating: 0, count: n+1)
        results[0] = 0
        results[1] = 1
        results[2] = 2
        results[3] = 3
        
        var temp = 0
        var max = 0
        for i in 4...n {
            for j in 1...i/2 {
                temp = results[j]*results[i-j]
                if max < temp { max = temp }
            }
            results[i] = max
        }
        return results[n]
    }
}
