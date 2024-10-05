/**
 * 1539. Kth Missing Positive Number
 * https://leetcode.com/problems/kth-missing-positive-number/
 *
 * https://leetcode.com/problems/kth-missing-positive-number/discuss/1004549/C%2B%2B-PHP-JavaScript-Swift-Easy-short-and-faster-solution-without-counting
 */

class Solution {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var i = 0
        while i < arr.count && arr[i] < i + k + 1 {
            i += 1
        }
        return i + k
    }
}