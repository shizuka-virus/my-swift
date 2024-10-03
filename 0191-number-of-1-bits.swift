/**
 * 191. Number of 1 Bits
 * https://leetcode.com/problems/number-of-1-bits/
 */

class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var m = 2147483648, ans = 0
        while m > 0 {
            if n & m > 0 {
                ans += 1
            }
            m >>= 1
        }
        return ans
    }
}