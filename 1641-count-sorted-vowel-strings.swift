/**
 * 1641. Count Sorted Vowel Strings
 * https://leetcode.com/problems/count-sorted-vowel-strings/
 */

class Solution {
    func countVowelStrings(_ n: Int) -> Int {
        var dp = Array(repeating: [1,1,1,1,1,0], count: n+1)
        for i in 1...n {
            for j in [4,3,2,1,0] {
                dp[i][j] = dp[i][j+1] + dp[i-1][j]
            }
        }
        return dp[n][0]
    }
}