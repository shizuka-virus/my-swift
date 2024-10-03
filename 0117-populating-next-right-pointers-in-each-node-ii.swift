/**
 * 117. Populating Next Right Pointers in Each Node II
 * https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/
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
         var root = root, cur = root
         if root!.left != nil {
             root!.left!.next = root!.right
         }
         for el in [root!.right, root!.left] {
             if el != nil {
                 while el!.next == nil && cur!.next != nil {
                     cur = cur!.next
                     el!.next = cur!.left != nil ? cur!.left : cur!.right
                 }
                 self.connect(el)
             }
         }
         return root
     }
 }