/**
 * 1281. Subtract the Product and Sum of Digits of an Integer
 * https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
 */

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        return Int(Array(String(n)).reduce(1, {$0 * Int(String($1))!})) - Int(Array(String(n)).reduce(0, {$0 + Int(String($1))!}))
    }
}