/**
 * 1739. Building Boxes
 * https://leetcode.com/problems/building-boxes/
 *
 * https://leetcode.com/problems/building-boxes/discuss/1032612/PHP-Swift-JavaScript-Easy-and-faster-solutions
 */

class Solution {
    func minimumBoxes(_ n: Int) -> Int {
        var s = 0, x = 0, next = 1

        while s+x+next <= n {
            s += x + next
            x += next
            next += 1
        }

        next = 1
        while s < n {
            s += next
            next += 1
            x += 1
        }

        return x
    }
}