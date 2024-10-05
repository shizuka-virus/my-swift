/**
 * 1309. Decrypt String from Alphabet to Integer Mapping
 * https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/
 */

class Solution {
    func freqAlphabets(_ s: String) -> String {
        var s = s, i = 26
        while i > 0 {
            s = s.replacingOccurrences(of: i>9 ? String(i)+"#" : String(i), with: String(Character(UnicodeScalar(96+i)!)))
            i -= 1
        }
        return s
    }
}