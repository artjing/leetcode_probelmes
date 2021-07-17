//
//  7.swift
//  
//
//  Created by 董静 on 7/16/21.
//

import Foundation

// MARK - Write a recursive function that prints all the subsequences of a string of length at most 10. Example: INPUT: “abc” OUTPUT: “”, “a”, “b”, “c”, “ab”, “ac”, “bc”, “abc”
print(findSubstr("abc"))

func findSubstr(_ input: String) -> [String]{
    
    var results = [String]()
    let str = Array(input)
    
    func dfs( _ index: Int, _ sub: String){
        if index == str.count {
            results.append(sub)
            return
        }
        dfs(index + 1, sub + String(str[index]))
        dfs(index + 1, sub )

    }
    dfs(0, "")
    return results
}

