//
//  leetcode191.swift
//  
//
//  Created by 董静 on 4/2/21.
//

import Foundation
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var result = 0
        var number = n
        for i in 0..<32{
            let temp = number&1
            if temp == 1{
                result += 1
            }
            number>>=1
        }
        return result
    }
}
