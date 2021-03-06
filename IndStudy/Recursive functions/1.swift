//
//  1.swift
//  
//
//  Created by 董静 on 7/16/21.
//

import Foundation

// MARK -  Write a recursive function that returns the frequency of a key given as input in a BST


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

let node = TreeNode(3)
let lnode = TreeNode(3)
let rnode = TreeNode(3)
lnode.left = TreeNode(4)

node.left = lnode
node.right = rnode

let result = findElement(node, 4)

func findElement(_ root: TreeNode?, _ k: Int) -> Int {
    
    if root == nil {
        return 0
    }
    
    let left = findElement(root?.left, k)
    let right = findElement(root?.right, k)
    
    if root?.val == k {
        return left + right + 1
    }else{
        return left + right
    }
}
