//
//  7.swift
//  
//
//  Created by 董静 on 7/16/21.
//

import Foundation

// MARK - Write a function that determines if a String is a palindrome INPUT: “ISSA” OUTPUT: True , INPUT: “SSA” OUTPUT: False. Write an iterative and a recursive function that returns bool.

print(isPalindrome("abccba"))

func isPalindrome(_ input: String) -> Bool {
    let charArray = Array(input)
    return dfs(charArray, 0)
}

func dfs(_ string: [Character], _ index: Int) -> Bool{
    
    let count = string.count - 1
    if count - index < index {
        return true
    }
    
    if string[index] != string[count - index] {
        return false
    }
    
    return dfs(string, index + 1)

}



/*
 
 125. Valid Palindrome

 Share
 Given a string s, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

 Example 1:
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 Example 2:
 */

class Solution {
    
    func isPalindrome(_ s: String) -> Bool {
        let strArr = Array(s)
        let len = strArr.count - 1
        return dfs(strArr, 0, len)
    }
    
    func dfs(_ string: [Character], _ l: Int, _ r: Int) -> Bool{
    
    if l >= r {
        return true
    }
    
    if !string[l].isLetter && !string[l].isNumber {
        return dfs(string, l + 1, r)
    }
    
    if !string[r].isLetter && !string[r].isNumber {
        return dfs(string, l, r - 1)
    }
        
    if string[l].lowercased() != string[r].lowercased() {
        return false
    }
        
    return dfs(string, l + 1, r - 1)

}
}
