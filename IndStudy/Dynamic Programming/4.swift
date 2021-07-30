//
//  1.swift
//  
//
//  Created by 董静 on 7/29/21.
//

import Foundation

/*
 Write a function that returns the length of the longest palindromic subsequence of a string of length n <= 10.
 EXAMPLE:
 INPUT: abdcba. OUTPUT: 5. Because abcba or abdba are both palindromes with max length. Note that abba, aa, bb, aba are all palindromes but not with max length.
 INPUT: aaa. OUTPUT: 3
 INPUT: abc. OUTPUT: 1
 INPUT: acc. OUTPUT: 2
 Q: Can you make your solution work for n up to 3000?
*/



// time: m x n

class Solution {
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        
        var m = m
        var n = n
        
        return dfs(m - 1, n - 1, 0, 0)
    }

    func dfs(_ m: Int, _ n: Int, _ x: Int, _ y: Int) -> Int{

        if x > n || y > m {
            return 0
        }
        
        if x == n && y == m {
            return 1
        }

        let l = dfs(m, n, x + 1, y)
        let r = dfs(m, n, x, y + 1)

        return l + r
    }
}



// time: m x n
class Solution {
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        
        var m = m
        var n = n
        var paths = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)
        return dfs(m - 1, n - 1, 0, 0, &paths)
    }

    func dfs(_ m: Int, _ n: Int, _ x: Int, _ y: Int, _  paths: inout [[Int]]) -> Int{

        
        if x > n || y > m {
            return 0
        }
        
        if x == n && y == m {
            return 1
        }
        
        if paths[x][y] != 0 {
            return paths[x][y]
        }
        
        let l = dfs(m, n, x + 1, y, &paths)
        let r = dfs(m, n, x, y + 1, &paths)
        let result = l + r
        
        paths[x][y] = result
        return result
        
    }
}



class Solution {
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var m = m
        var n = n
        var result = 0
        var paths = Array(repeating: Array(repeating: 0, count: n+1), count: m+1)
        for i in 0..<m {
            for j in 0..<n {
                if i == 0 || j == 0 {
                    paths[i][j] = 1
                }else{
                    paths[i][j] = paths[i][j-1] + paths[i-1][j]
                }
            }
        }
       return paths[m-1][n-1]
    }
}


class Solution {
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var m = m
        var n = n
        var result = 0
        var paths = Array(repeating: 0, count: n+1)
        for i in 0..<m {
            for j in 0..<n {
                if i == 0 || j == 0 {
                    paths[j] = 1
                }else{
                    paths[j] = paths[j-1] + paths[j]
                }
            }
        }
       return paths[n-1]
    }
}
