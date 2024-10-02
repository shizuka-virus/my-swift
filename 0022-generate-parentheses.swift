/**
 * 22. Generate Parentheses
 * https://leetcode.com/problems/generate-parentheses/
 */

class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        if n <= 1 {
            return n == 1 ? ["()"] : [""]
        }

        var result: [String] = []
        var map: [[String]] = []

        for i in 0...n-1 {
            map.append(self.generateParenthesis(i))
        }

        for i in 0...n-1 {
            for one in map[i] {
                for two in map[n-1-i] {
                    result.append("(" + two + ")" + one)
                }
            }
        }

        return result
    }
}