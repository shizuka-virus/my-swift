/**
 * 605. Can Place Flowers
 * https://leetcode.com/problems/can-place-flowers/
 */

 class Solution {
     func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
         var n = n, i = 0
         while i < flowerbed.count && n > 0 {
             if flowerbed[i] == 0 &&
                flowerbed[i-1 >= 0 ? i-1 : i] == 0 &&
                flowerbed[i+1 < flowerbed.count ? i+1 : i] == 0 {
                    n -= 1
                    i += 1
                }
             i += 1
         }
         return n <= 0
     }
 }