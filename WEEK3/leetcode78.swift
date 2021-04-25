//
//  leetcode78.swift
//  
//
//  Created by 董静 on 3/29/21.
//

import Foundation
class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var temp = [Int]()
        fsb(nums, temp, 0, &result)
        return result
    }
    
    func fsb(_ nums:[Int], _ temp:[Int], _ index:Int, _ result: inout [[Int]]){
        
        if index == nums.count{
            result.append(temp)
            return
        }
        var temp = temp
        temp.append(nums[index])
        fsb(nums, temp, index+1, &result)
        temp.removeLast()
        fsb(nums, temp, index+1, &result)

    }
}
