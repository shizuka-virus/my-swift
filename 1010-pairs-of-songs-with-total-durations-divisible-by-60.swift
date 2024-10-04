/**
 * 1010. Pairs of Songs With Total Durations Divisible by 60
 * https://leetcode.com/problems/pairs-of-songs-with-total-durations-divisible-by-60/
 */

 class Solution {
     func numPairsDivisibleBy60(_ time: [Int]) -> Int {
         var map: [Int:Int] = [:]
         var pairs = 0

         for t in time {
             map[t % 60] = (map[t % 60] ?? 0) + 1
         }

         for i in 1..<30 {
             pairs += (map[i] ?? 0) * (map[60 - i] ?? 0)
         }

         pairs += (map[0] ?? 0) * ((map[0] ?? 0) - 1) / 2
         pairs += (map[30] ?? 0) * ((map[30] ?? 0) - 1) / 2

         return pairs
     }
 }