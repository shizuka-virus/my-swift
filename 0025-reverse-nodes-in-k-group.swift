/**
 * 25. Reverse Nodes in k-Group
 * https://leetcode.com/problems/reverse-nodes-in-k-group/
 */

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        var head = head, current = head
        if k == 1 {
            return head
        }
        for i in 1...k - 1 {
            if current?.next == nil {
                return head
            }
            current = current?.next
        }
        current = head
        for i in 1...k - 1 {
            var node = current!.next
            current!.next = node?.next
            node!.next = head
            head = node
        }
        current!.next = self.reverseKGroup(current?.next, k)
        return head
    }
}