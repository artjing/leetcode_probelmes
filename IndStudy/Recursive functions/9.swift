//
//  9.swift
//  
//
//  Created by 董静 on 7/29/21.
//  Write a function that prints out the longest palindromic substring. -> longest palindromic subsequence



class Solution {
    
    var allSub = [String]()
    func longestPalindromeSubseq(_ s: String) -> Int {
        let strArray = Array(s)
        findAllSub(strArray, 0, "")
        
        var maxNum = Int.min
        for item in allSub{
            if isPanlin(item) {
                maxNum = max(item.count, maxNum)
            }
        }
        return maxNum
    }
    
    func findAllSub(_ str: [Character], _ index: Int, _ sub: String){
        let n = str.count - 1
        if index > n + 1{ return }
        if index == n + 1{
            // sub+String(str[index])
            allSub.append(sub)
            return
        }
        print(index)
        findAllSub(str, index + 1, sub + String(str[index]))
        findAllSub(str, index + 1, sub)
    }
    
    func isPanlin(_ str: String) -> Bool {
        let chars = Array(str)
        let n = chars.count - 1
        var left = 0
        var right = n
        while left < right {
            if chars[left] != chars[right]{
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}
