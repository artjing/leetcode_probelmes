//
//  6.swift
//  
//
//  Created by 董静 on 7/16/21.
//

import Foundation

// MARK - Write a recursive function that takes a variable n and returns the number of paths in a grid of size n*n starting from (0,0) to (n-1,n-1). (n doesn’t bypass 8)

class Solution {
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        
        var paths = Array(repeating: Array(repeating: 0, count: n+10), count:m+10)
        
        
        func dfs(_ x: Int, _ y: Int) -> Int{
            
            if x > m - 1 || x < 0 || y < 0 || y > n - 1 { return 0 }
            
            if x == m - 1 || n == n - 1{
                return 1
            }
            
            if paths[x][y] != 0{
                return paths[x][y]
            }
            
            let result = dfs(x + 1, y) + dfs(x, y + 1)
            paths[x][y] = result
            return result

        }
        
        return dfs(0, 0)
    }
}
