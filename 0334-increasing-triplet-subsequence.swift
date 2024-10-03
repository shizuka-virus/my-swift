/**
 * 334. Increasing Triplet Subsequence
 * https://leetcode.com/problems/increasing-triplet-subsequence/
 */

class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var first: Int?
        var second: Int?
        for num in nums {
            if second != nil && num > second! {
                return true
            }
            if first != nil && num > first! && (second == nil || num < second!) {
                second = num
            }
            if first == nil || num < first! {
                first = num
            }
        }
        return false
    }
}