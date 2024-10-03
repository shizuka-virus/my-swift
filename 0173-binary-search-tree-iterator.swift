/**
 * 173. Binary Search Tree Iterator
 * https://leetcode.com/problems/binary-search-tree-iterator/
 *
 * https://leetcode.com/problems/binary-search-tree-iterator/discuss/966100/PHP-JavaScript-Swift-Stacks-faster-100-O(1)-time-O(h)-space-explained
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

 class BSTIterator {

     var parents: [TreeNode?] = []

     init(_ root: TreeNode?) {
         var root = root

         while root != nil {
             self.parents.append(root)
             root = root?.left
         }
     }

     func next() -> Int {
         var cur = self.parents.removeLast()
         let val = cur!.val
         if (cur?.right != nil) {
             cur = cur!.right
             while cur != nil {
                 self.parents.append(cur)
                 cur = cur?.left
             }
         }
         return val
     }

     func hasNext() -> Bool {
         return !self.parents.isEmpty
     }
 }

 /**
  * Your BSTIterator object will be instantiated and called as such:
  * let obj = BSTIterator(root)
  * let ret_1: Int = obj.next()
  * let ret_2: Bool = obj.hasNext()
  */