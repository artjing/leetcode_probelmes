//
//  1_TwoSum.swift
//  
//
//  Created by 董静 on 4/14/21.
//

import Foundation
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        if nums.count < 2 {return []}
        var dic = [Int:Int]()
        for index in nums.indices{
            let num = nums[index]
            if let value = dic[target - num]{
                return [index, value]
            }
            dic[num] = index
        }
        return []
    }
}
