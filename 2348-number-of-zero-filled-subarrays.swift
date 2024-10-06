/**
 * 2348. Number of Zero-Filled Subarrays
 * https://leetcode.com/problems/number-of-zero-filled-subarrays/
 */

class Solution {

    func zeroFilledSubarray(_ nums: [Int]) -> Int {
        var i = 0
        var zero = 0
        var result = 0

        while i < nums.count {
            if nums[i] == 0 {
                zero += 1
            } else {
                while zero > 0 {
                    result += zero
                    zero -= 1
                }
            }
            i += 1
        }

        while zero > 0 {
            result += zero
            zero -= 1
        }

        return result
    }
}