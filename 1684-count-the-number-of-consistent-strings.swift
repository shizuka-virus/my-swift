/**
 * 1684. Count the Number of Consistent Strings
 * https://leetcode.com/problems/count-the-number-of-consistent-strings/
 **/

class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var result = 0
        var chars: [String: Bool] = [:]
        let allowed = Array(allowed).map{String($0)}
        let words = words.map{Array($0).map{String($0)}}

        for ch in allowed {
            chars[ch] = true
        }

        wordsloop : for word in words {
            for ch in word where chars[ch] == nil {
                continue wordsloop
            }
            result += 1
        }

        return result
    }
}