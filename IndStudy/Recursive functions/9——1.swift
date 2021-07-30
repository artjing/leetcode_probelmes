//
//  9.swift
//  
//
//  Created by 董静 on 7/29/21.
//  Write a recursive function that finds if a string has a palindrome subsequence of length > 1 and returns true if it’s the case



class Solution {
    
    var allSub = [String]()
    func longestPalindromeSubseq(_ s: String) -> Int {
        let strArray = Array(s)
        return findAllSub(strArray, 0, "")
    }
    
    func findAllSub(_ str: [Character], _ index: Int, _ sub: String) -> Bool {
        let n = str.count - 1
        if index > n + 1{ return }
        if index == n + 1{
            if isPanlin(sub) {
                return true
            }
        }
        findAllSub(str, index + 1, sub + String(str[index]))
        findAllSub(str, index + 1, sub)
        return false
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
