/**
 * 116. Populating Next Right Pointers in Each Node
 * https://leetcode.com/problems/populating-next-right-pointers-in-each-node/
 */

 /**
  * Definition for a Node.
  * public class Node {
  *     public var val: Int
  *     public var left: Node?
  *     public var right: Node?
  *	   public var next: Node?
  *     public init(_ val: Int) {
  *         self.val = val
  *         self.left = nil
  *         self.right = nil
  *         self.next = nil
  *     }
  * }
  */

 class Solution {
     func connect(_ root: Node?) -> Node? {
         if root == nil {
             return root
         }
         if root!.left != nil {
             root!.left!.next = root!.right
             if root!.next != nil {
                 root!.right!.next = root!.next!.left
             }
             self.connect(root!.left)
             self.connect(root!.right)
         }
         return root
     }
 }