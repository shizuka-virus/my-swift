/**
 * 771. Jewels and Stones
 * https://leetcode.com/problems/jewels-and-stones/
 */

class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        return Array(S).filter{Array(J).contains($0)}.count
    }
}