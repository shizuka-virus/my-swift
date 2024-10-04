/**
 * 905. Sort Array By Parity
 * https://leetcode.com/problems/sort-array-by-parity/
 */

class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        return A.sorted(by: {$0 % 2 == 0 && $1 % 2 == 1})
    }
}