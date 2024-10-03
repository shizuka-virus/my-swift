/**
 * 98. Validate Binary Search Tree
 * https://leetcode.com/problems/validate-binary-search-tree/
 *
 * https://leetcode.com/problems/validate-binary-search-tree/discuss/974378/PHP-JavaScript-Swift-Simple-solution-with-recursion
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
    func isValidBST(_ root: TreeNode?, _ less: Int? = nil, _ greater: Int? = nil) -> Bool {
        return root == nil || (
            (
                less == nil || root!.val < less!
            ) && (
                greater == nil || root!.val > greater!
            ) && (
                root?.left == nil ||
                (root!.left!.val < root!.val && self.isValidBST(root?.left, root!.val, greater))
            ) && (
                root?.right == nil ||
                (root!.right!.val > root!.val && self.isValidBST(root?.right, less, root!.val))
            )
        )
    }
}