//
//  3.swift
//  
//
//  Created by 董静 on 7/16/21.
//

import Foundation

// MARK -
/*  To find the subsets of an array of integers
    Look up into backtracking
    DFS
    Refer to Similar challenges(Soduku)
*/
var array = [1,2,3,4,5]
var resultSum = findSubsets(array)
var results = [[Int]]()
func findSubsets(_ array: [Int]) -> [[Int]]{
    
    guard array.count != 0 else {return[[]]}
    subsetDfs(array, 0, [])
    return results
}

func subsetDfs(_ array: [Int], _ index: Int, _ subset: [Int]){
    
    if index == array.count {
        results.append(subset)
        return
    }
    let item = array[index]
    var subset = subset
    subset.append(item)
    subsetDfs(array, index + 1, subset)
    subset.removeLast()
    subsetDfs(array, index + 1, subset)
    
}
 
