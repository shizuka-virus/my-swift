/**
 * 59. Spiral Matrix II
 * https://leetcode.com/problems/spiral-matrix-ii/
 */

 class Solution {
     func generateMatrix(_ n: Int) -> [[Int]] {
         var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
         var x = 0, y = 0, dx = 1, dy = 0
         for i in 1...n*n {
             result[y][x] = i
             if x+dx < 0 || x+dx >= n || y+dy < 0 || y+dy >= n || result[y+dy][x+dx] > 0 {
                 (dy, dx) = (dx, dx != 0 ? 0 : dy == 1 ? -1 : 1)
             }
             x += dx
             y += dy
         }
         return result
     }
 }