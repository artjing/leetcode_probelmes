//
//  2.swift
//  
//
//  Created by 董静 on 7/16/21.
//

import Foundation

// MARK -  To find the number of unique paths from a the root til the end of the BST

func findUniquePath(_ root: TreeNode?) -> Int{
    
    guard let root = root else { return 0 }
    return dfs(root)
}

func dfs(_ root: TreeNode?) -> Int {
    
    guard let root = root else{ return 0 }
    if root.left == nil && root.right == nil{
        return 1
    }
    return dfs(root.left) + dfs(root.right)
}
