/**
 * 1492. The kth Factor of n
 * https://leetcode.com/problems/the-kth-factor-of-n/
 *
 * https://leetcode.com/problems/the-kth-factor-of-n/discuss/959289/PHP-JavaScript-Swift-Easy-solution
 */

class Solution {
    func kthFactor(_ n: Int, _ k: Int) -> Int {
        var k = k
        for i in 1...n {
            if n % i == 0 {
                k -= 1
                if k == 0 {
                    return i
                }
            }
        }
        return -1
    }
}