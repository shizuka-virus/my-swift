/**
 * 1662. Check If Two String Arrays are Equivalent
 * https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
 */

 class Solution {
     func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
         return word1.reduce("", +) == word2.reduce("", +)
     }
 }

class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        return word1.joined() == word2.joined()
    }
}