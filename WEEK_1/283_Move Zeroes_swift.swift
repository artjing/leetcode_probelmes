//
//  283_Move Zeroes_swift.swift
//  
//
//  Created by 董静 on 3/14/21.
//

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        
        var left = 0
        var index = 0
        for i in 0..<nums.count {
            if nums[i] != 0{
                nums[left]=nums[i]
                left += 1
            }
        }
        if(left<nums.count){
            for i in left..<nums.count{
                nums[i] = 0
            }
        }
    }
}
