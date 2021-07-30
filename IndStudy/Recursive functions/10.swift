//
//  9.swift
//  
//
//  Created by 董静 on 7/29/21.
//  Write a recursive function that prints all the palindrome subsequences of a string that is of length at most 8 without duplicates and ordered by the length of the subsequence. Example: INPUT: “aaba”. OUTPUT: ‘a’, ‘b’, ‘aa’, ‘aba’



class Solution {
    
    var subDid : [String: Int] = [:]()
    
    func longestPalindromeSubseq(_ s: String) -> Int {
        let strArray = Array(s)
        findAllSub(strArray, 0, "")
        for (key) in strArray{
            print(key)
        }
    }
    
    func findAllSub(_ str: [Character], _ index: Int, _ sub: String){
        let n = str.count - 1
        if index > n + 1{ return }
        if index == n + 1{
            if !subDid.contains(sub) && sub.count < 9 {
                subDic[sun] = 1
            }
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
