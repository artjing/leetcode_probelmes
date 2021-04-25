//
//  104_Maximum Depth of Binary Tree_Swift.swift
//  
//
//  Created by 董静 on 3/15/21.
//

import Foundation

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else{
            return 0
        }
    
        let left = maxDepth(root.left)
        let right = maxDepth(root.right)
        return max(left, right) + 1
    }
}
