/**
 * 1470. Shuffle the Array
 * https://leetcode.com/problems/shuffle-the-array/
 */

 class Solution {
     func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
         var result: [Int] = []
         for i in 0...n-1 {
             result.append(contentsOf: [nums[i], nums[i+n]])
         }
         return result
     }
 }