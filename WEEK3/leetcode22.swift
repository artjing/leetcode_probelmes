//
//  leetcode22.swift
//  
//
//  Created by 董静 on 3/27/21.
//

import Foundation

class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var results = [String]()
        dfs("", &results, n, 0, 0)
        return results
    }
    
    func dfs(_ cur:String, _ result:inout [String], _ n:Int, _ left:Int, _ right:Int){
       
        if right == n {
            result.append(cur)
        }
        if left<n {
            dfs(cur+"(", &result, n, left+1, right)
        }
        if right<left {
            dfs(cur+")", &result, n, left, right+1)
        }
    }
}
