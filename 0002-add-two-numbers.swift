/**
 * 2. Add Two Numbers
 * https://leetcode.com/problems/add-two-numbers/
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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1: ListNode? = l1,
            l2: ListNode? = l2,
            current: ListNode? = ListNode(0)

        let head = current

        var valNext = 0

        while l1 !== nil || l2 !== nil || valNext > 0 {
            let val = (l1?.val ?? 0) + (l2?.val ?? 0) + valNext
            valNext = val >= 10 ? 1 : 0

            current?.next = ListNode(val % 10)
            current = current?.next
            l1 = l1?.next
            l2 = l2?.next
        }

        return head?.next
    }
}