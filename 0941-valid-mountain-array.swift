/**
 * 941. Valid Mountain Array
 * https://leetcode.com/problems/valid-mountain-array/
 */

 class Solution {
     func validMountainArray(_ arr: [Int]) -> Bool {
         var i = 0, j = arr.count - 1

         while i < arr.count - 1 && arr[i] < arr[i+1] {
             i += 1
         }
         while j > 0 && arr[j] < arr[j-1] {
             j -= 1
         }

         return i == j && i > 0 && j < arr.count - 1
     }
 }