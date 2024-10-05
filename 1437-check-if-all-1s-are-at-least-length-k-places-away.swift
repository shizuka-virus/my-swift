/**
 * 1437. Check If All 1's Are at Least Length K Places Away
 * https://leetcode.com/problems/check-if-all-1s-are-at-least-length-k-places-away/
 */

class Solution {
    func kLengthApart(_ nums: [Int], _ k: Int) -> Bool {
        var pos = -k-1
        for (i, v) in nums.enumerated() where v == 1 {
            if i - pos <= k {
                return false
            }
            pos = i
        }
        return true
    }
}