/**
 * 82. Remove Duplicates from Sorted List II
 * https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/
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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var head: ListNode? = ListNode(0, head)
        var cur = head

        while cur?.next != nil {
            if cur!.next!.next != nil && cur!.next!.val == cur!.next!.next!.val {
                if cur!.next!.next!.next == nil || cur!.next!.val != cur!.next!.next!.next!.val {
                    cur!.next = cur!.next!.next!.next
                } else {
                    cur!.next = cur!.next!.next
                }
            } else {
                cur = cur!.next
            }
        }

        return head!.next
    }
}