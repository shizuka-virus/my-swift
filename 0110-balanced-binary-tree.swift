/**
 * 110. Balanced Binary Tree
 * https://leetcode.com/problems/balanced-binary-tree/
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

    func isBalanced(_ root: TreeNode?) -> Bool {
        func recursion(_ node: TreeNode?) -> Int {
            if node == nil {
                return 1
            }
            let l = recursion(node?.left)
            let r = recursion(node?.right)
            return l == 0 || r == 0 || abs(l - r) > 1 ? 0 : max(l, r) + 1
        }

        return recursion(root) > 0
    }
}