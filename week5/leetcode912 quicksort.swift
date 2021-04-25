//
//  leetcode912 quicksort.swift
//  
//
//  Created by 董静 on 4/11/21.
//

import Foundation
class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        quickSort(&nums, 0, nums.count - 1)
        return nums
    }
    
    func quickSort(_ nums: inout[Int], _ start:Int, _ end:Int) {
        
        guard start < end else { return }
        let pivotIndex = partition(&nums, start, end)
        quickSort(&nums, start, pivotIndex-1)
        quickSort(&nums, pivotIndex+1, end)
    }
    
    func partition(_ sums: inout[Int], _ start : Int, _ end : Int) -> Int {
        
        var pivot = sums[start]
        var left = start
        var right = end
        
        while left != right {
            
            while left < right && pivot <= sums[right]{
                right -= 1
            }
            
            while left < right && pivot >= sums[left] {
                left += 1
            }
            
            if left < right {
                let temp = sums[right]
                sums[right] = sums[left]
                sums[left] = temp
            }
        }
            sums[start] = sums[left]
            sums[left] = pivot
            
            return left

        
}
}
