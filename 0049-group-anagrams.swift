/**
 * 49. Group Anagrams
 * https://leetcode.com/problems/group-anagrams/
 */

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map: [String: [String]] = [:]

        for str in strs {
            let s = String(Array(str).sorted())
            if map[s] == nil {
                map[s] = [str]
            } else {
                map[s]!.append(str)
            }
        }

        return Array(map.values)
    }
}