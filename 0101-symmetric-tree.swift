/**
 * 101. Symmetric Tree
 * https://leetcode.com/problems/symmetric-tree/
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
     func compare(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
         if a == nil || b == nil {
             return a == nil && b == nil
         }

         return a!.val == b!.val && self.compare(a!.left, b!.right) && self.compare(a!.right, b!.left)
     }

     func isSymmetric(_ root: TreeNode?) -> Bool {
         return self.compare(root?.left, root?.right)
     }
 }