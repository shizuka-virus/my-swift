/**
 * 1. Two Sum
 * https://leetcode.com/problems/two-sum/
 */

 class Solution {
     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         var map = [Int: Int]()
         for (i, v) in nums.enumerated() {
             if let index = map[target - v] {
                 return [index, i]
             }
             map[v] = i
         }
         return []
     }
 }