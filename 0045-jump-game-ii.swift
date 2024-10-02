/**
 * 45. Jump Game II
 * https://leetcode.com/problems/jump-game-ii/
 */

 class Solution {
     func jump(_ nums: [Int]) -> Int {
         var now = 0, jumps = 1
         var maxJump = nums[now] ?? 0
         var nextJump = maxJump

         while maxJump < nums.count-1 {
             while now <= maxJump {
                 if now + nums[now] > nextJump {
                     nextJump = now + nums[now]
                 }
                 now += 1
             }
             jumps += 1
             maxJump = nextJump
         }

         return nums.count <= 1 ? 0 : jumps
     }
 }