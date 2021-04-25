//
//  lletcode102.swift
//  
//
//  Created by 董静 on 3/30/21.
//

import Foundation
class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var results = [[Int]]()
        guard let temp = root else {
            return []
        }
        
        recursive(0, temp, &results)
        return results
    }
    
    func recursive(_ level: Int, _ node: TreeNode?, _ results: inout [[Int]] ) {
        
        guard let temp = node else{
            return
        }
        
        if results.count - 1 < level {
            let curLevel = [Int]()
            results.append(curLevel)
        }
        results[level].append(temp.val)
        recursive(level+1, temp.left, &results)
        recursive(level+1, temp.right, &results)
    }

}
