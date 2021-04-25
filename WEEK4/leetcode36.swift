//
//  leetcode36.swift
//  
//
//  Created by 董静 on 4/3/21.
//

import Foundation
class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        if board == nil || board.count == 0 {return false}
        
        var rowSets = Array(repeating: Set<Character>(), count: 9)
        var columnSets = Array(repeating: Set<Character>(), count: 9)
        var boxSets = Array(repeating: Set<Character>(), count: 9)
        
        for rowIndex in board.indices{
            for columnIndex in board[0].indices{
                let number = board[rowIndex][columnIndex]
                if number == "." {continue}
                let boxIndex = (rowIndex/3) * 3 + columnIndex/3
                
                if rowSets[rowIndex].contains(number) || columnSets[columnIndex].contains(number) || boxSets[boxIndex].contains(number){return false}
                rowSets[rowIndex].insert(number)
                columnSets[columnIndex].insert(number)
                boxSets[boxIndex].insert(number)
            }
        }
        return true
    }
}
