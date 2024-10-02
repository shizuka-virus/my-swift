/**
 * 3. Longest Substring Without Repeating Characters
 * https://leetcode.com/problems/longest-substring-without-repeating-characters/
 **/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var len = 0, left = 0, right = 0
        var map: [String: Bool] = [:]
        var s = Array(s).map{String($0)}

        while right < s.count {
            if map[s[right]] != nil {
                while s[left] != s[right] {
                    map[s[left]] = nil
                    left += 1
                }
                left += 1
            }
            map[s[right]] = true
            right += 1
            len = max(len, map.count)
        }

        return len
    }
}s