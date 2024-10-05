/**
 * 1402. Reducing Dishes
 * https://leetcode.com/problems/reducing-dishes/
 */

class Solution {
    func maxSatisfaction(_ satisfaction: [Int]) -> Int {
        var max = 0, line = 0
        for value in satisfaction.sorted(by: >) where line + value > 0 {
            line += value
            max += line
        }

        return max
    }
}