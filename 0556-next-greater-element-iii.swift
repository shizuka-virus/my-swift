/**
 * 556. Next Greater Element III
 * https://leetcode.com/problems/next-greater-element-iii/
 */

 class Solution {
     func nextGreaterElement(_ n: Int) -> Int {
         var n = Array(String(n)), i = n.count-1
         while i > 0 {
             if n[i] > n[i-1] {
                 var j = i
                 while j < n.count && n[j] > n[i-1] {
                     j += 1
                 }
                 (n[i-1], n[j-1]) = (n[j-1], n[i-1])
                 n = n[0..<i] + n[i...].sorted()

                 return Int(String(n))! < Int(pow(Double(2), Double(31))) ? Int(String(n))! : -1
             }
             i -= 1
         }
         return -1
     }
 }