//
//  LEETCODE200.swift
//  
//
//  Created by 董静 on 3/31/21.
//

import Foundation
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        if grid.count == 0  { return 0 }
        var numislands = 0
        var tempGrid = grid
        for i in 0..<tempGrid.count{
            for j in 0..<tempGrid[i].count{
                if tempGrid[i][j] == "1"{
                    numislands += dfs(&tempGrid, i, j)
                }
            }
        }
        return numislands
    }
    
    func dfs(_ tempGrid: inout [[Character]], _ i:Int, _ j:Int) -> Int{
        if i < 0 || i >= tempGrid.count || j < 0 || j >= tempGrid[i].count || tempGrid[i][j] == "0" {
            return 0
        }
        tempGrid[i][j] = "0"
        dfs(&tempGrid, i+1, j)
        dfs(&tempGrid, i-1, j)
        dfs(&tempGrid, i, j+1)
        dfs(&tempGrid, i, j-1)
        return 1
    }
}
