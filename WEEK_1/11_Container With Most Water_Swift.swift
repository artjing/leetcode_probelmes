//
//  11_Container With Most Water_Swift.swift
//  
//
//  Created by 董静 on 3/14/21.
//

import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var j = height.count-1
        var i = 0
        var maxNum = 0
        
        while i < j {
            let minNum = min(height[i], height[j])
            let area = (j-i) * minNum
            maxNum = max(maxNum, area)
            if height[i] < height[j]{
                i += 1
            }else{
                j -= 1
            }
        }
        return maxNum
    }
}
