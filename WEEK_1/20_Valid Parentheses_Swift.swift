//
//  20_Valid Parentheses_Swift.swift
//  
//
//  Created by 董静 on 3/14/21.
//

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        let charDic:[Character: Character] = [")":"(", "]":"[", "}":"{"]
        var charArray = [Character]()
        
        for elem in s{
            if let rightChar = charDic[elem] {
                let currentChar = charArray.isEmpty ? "*" : charArray.removeLast()
                if(rightChar != currentChar) { return false }
            }else{
                charArray.append(elem)
            }
        }
        return charArray.isEmpty
    }
}
