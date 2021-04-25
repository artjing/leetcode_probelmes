//
//  leetcode53.swift
//  
//
//  Created by 董静 on 4/2/21.
//

import Foundation
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var curmax = 0
        var result = Int.min
        for i in 0..<nums.count{
            curmax = max(nums[i], nums[i]+curmax)
            result = max(result, curmax)
        }
        return result
    }
}
