//
//  70_Climbing Stairs_swift.swift
//  
//
//  Created by 董静 on 3/14/21.
//

import Foundation

class Solution {
    func climbStairs(_ n: Int) -> Int {
        
        if n <= 2 {return n}
        
        var next = 2
        var last = 1
        var sum = 0
        for i in 2..<n{
            sum = last + next
            last = next
            next = sum
        }
        return sum
    }
}
