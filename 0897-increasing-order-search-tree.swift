/**
 * 897. Increasing Order Search Tree
 * https://leetcode.com/problems/increasing-order-search-tree/
 */

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        var root = root,
            current = root
        var nodeStack: [TreeNode?] = []

        while current !== nil {
            if current!.left !== nil && current!.right === nil {
                current!.right = current!.left
                current!.left = nil
            }
            if current!.left !== nil {
                nodeStack.append(current!.left)
                current!.left = nil
            }
            if current!.right === nil && !nodeStack.isEmpty {
                current!.right = nodeStack.removeLast()
            }
            current = current!.right
        }

        var flag = true,
            prev: TreeNode?,
            node: TreeNode?

        while flag {
            flag = false
            prev = nil
            current = root
            while current !== nil && current!.right !== nil {
                if current!.val > current!.right!.val {
                    flag = true
                    node = current!.right
                    current!.right = current!.right!.right
                    node!.right = current
                    if prev !== nil {
                        prev!.right = node
                    } else {
                        root = node
                    }
                }
                prev = current
                current = current!.right
            }
        }

        return root
    }
}