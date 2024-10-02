/**
 * 11. Container With Most Water
 * https://leetcode.com/problems/container-with-most-water/
 */

 class Solution {
     func maxArea(_ height: [Int]) -> Int {
         var maxWater: Int = 0,
             left = 0,
             right = height.count - 1

         while left < right {
             maxWater = max(maxWater, min(height[left], height[right]) * (right - left))
             if height[left] > height[right] {
                 right -= 1
             } else {
                 left += 1
             }
         }

         return maxWater
     }
 }