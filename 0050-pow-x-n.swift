/**
 * 50. Pow(x, n)
 * https://leetcode.com/problems/powx-n/
 */

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n > 0 {
            return n % 2 == 0 ? self.myPow(x*x, n/2) : x*self.myPow(x*x, (n-1)/2)
        }
        if n < 0 {
            return 1 / self.myPow(x, abs(n))
        }
        return 1
    }
}