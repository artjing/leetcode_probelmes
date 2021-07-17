//
//  4.swift
//  
//
//  Created by 董静 on 7/16/21.
//

import Foundation

// To find the max sum nodes in a path from root to leaf in a BST

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
let lnode = TreeNode(-3)
let rnode = TreeNode(3)
lnode.left = TreeNode(4)

node.left = lnode
node.right = rnode

//var re = findMaxSum(node)

var result : [Int]?
var max = 0

let my = findMaxSum(node)
print(my)

func findMaxSum(_ root: TreeNode?) -> [Int]{
    result = [Int]()
    sumBfs(root, index: 0, 0, [])
    return result!
}

func sumBfs(_ root: TreeNode?, index: Int, _ sum: Int, _ sumElements: [Int]) {
    
    var sumElements = sumElements
    guard let root = root else {
        return
    }
    
    if root.left == nil && root.right == nil {
        if max > sum{
            max = sum
            result = sumElements
        }
        sumElements.append(root.val)
        sumBfs(root.left, index: index + 1, sum + root.val, sumElements)
        sumBfs(root.right, index: index + 1, sum + root.val, sumElements)
    }
}
