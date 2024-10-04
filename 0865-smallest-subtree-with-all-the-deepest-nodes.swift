/**
 * 865. Smallest Subtree with all the Deepest Nodes
 * https://leetcode.com/problems/smallest-subtree-with-all-the-deepest-nodes/
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

    func getMaxDepth(_ node: TreeNode?) -> Int {
        return node == nil ? 0 : max(self.getMaxDepth(node?.left), self.getMaxDepth(node?.right)) + 1
    }

    func subtreeWithAllDeepest(_ root: TreeNode?) -> TreeNode? {
        var root = root, left = 0, right = 0
        repeat {
            left = self.getMaxDepth(root?.left)
            right = self.getMaxDepth(root?.right)
            if left != right {
                root = left > right ? root?.left : root?.right
            }
        } while left != right
        return root
    }

}