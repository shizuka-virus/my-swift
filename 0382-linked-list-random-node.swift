/**
 * 382. Linked List Random Node
 * https://leetcode.com/problems/linked-list-random-node/
 *
 * https://leetcode.com/problems/linked-list-random-node/discuss/957399/PHP-JavaScript-Swift-O(n)-time-O(1)-space-reservoir-sampling
 *
 * Reservoir sampling
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

    private let head: ListNode?

    /** @param head The linked list's head.
        Note that the head is guaranteed to be not null, so it contains at least one node. */
    init(_ head: ListNode?) {
        self.head = head
    }

    /** Returns a random node's value. */
    func getRandom() -> Int {
        var i: Int = 0
        var val: Int?
        var node: ListNode? = self.head

        while(node !== nil) {
            i += 1
            if Int.random(in: 1...i) == i {
                val = node!.val
            }
            node = node!.next
        }

        return val!
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(head)
 * let ret_1: Int = obj.getRandom()
 */