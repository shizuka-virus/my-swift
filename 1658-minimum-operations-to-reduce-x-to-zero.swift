/**
 * 1658. Minimum Operations to Reduce X to Zero
 * https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/
 */

class Solution {
    func minOperations(_ nums: [Int], _ x: Int) -> Int {
        var sum = 0
        var ans = nums.count+1
        var l = -1, r = nums.count

        while sum < x && l < nums.count-1 {
            l += 1
            sum += nums[l]
        }

        if sum < x {
            return -1
        }
        if sum == x {
            ans = min(ans, l+1)
        }

        while l >= 0 {
            sum -= nums[l]
            l -= 1
            while sum < x && r > l+1 {
                r -= 1
                sum += nums[r]
            }
            if sum == x {
                ans = min(ans, l+1+nums.count-r)
            }
        }

        return ans < nums.count+1 ? ans : -1
    }
}

