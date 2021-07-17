//
//  5.swift
//  
//
//  Created by 董静 on 7/16/21.
//

import Foundation

// MARK- To find the max sum nodes in a path from root to leaf in a BST
class Solution {
    
    var result = Int.min
    func maxPathSum(_ root: TreeNode?) -> Int {
        
        guard let root = root else{return 0}
        let sum = dfs(root)
        return result
    }
    
    func dfs(_ root: TreeNode?) -> Int {
        
        guard let root = root else{
            return 0
        }
        
        let left = max(0, dfs(root.left))
        let right = max(0, dfs(root.right))
        result = max(result, left + right + root.val)
        return max(left, right) + root.val

    }
}
