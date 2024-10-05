/**
 * 1457. Pseudo-Palindromic Paths in a Binary Tree
 * https://leetcode.com/problems/pseudo-palindromic-paths-in-a-binary-tree/
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
    func pseudoPalindromicPaths(_ root: TreeNode?, _ prev: [Int: Bool] = [:]) -> Int {
        var prev = prev
        if root == nil {
            return 0
        }
        prev[root!.val] = prev[root!.val] == nil ? true : nil
        if root?.left == nil && root?.right == nil {
            return prev.count < 2 ? 1 : 0
        }
        return self.pseudoPalindromicPaths(root?.left, prev) + self.pseudoPalindromicPaths(root?.right, prev)
    }
}