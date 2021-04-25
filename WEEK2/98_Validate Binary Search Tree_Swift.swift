//
//  98_Validate Binary Search Tree_Swift.swift
//  
//
//  Created by 董静 on 3/16/21.
//

import Foundation
class Solution {
    
    func isValidBST(_ root: TreeNode?) -> Bool {
        return validate(root, Int.min, Int.max)
    }
    
    func validate(_ root: TreeNode?, _ min: Int, _ max: Int) -> Bool{
        if root == nil { return true }
        if root!.val >= max || root!.val <= min {
            return false
        }else {
            return validate(root?.left, min, root!.val) && validate(root?.right, root!.val, max)
        }
    }
}
