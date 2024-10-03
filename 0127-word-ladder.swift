/**
 * 127. Word Ladder
 * https://leetcode.com/problems/word-ladder/
 */

class Solution {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var ans = 1
        var map: [String: Bool] = [:]
        var prev: [String: Bool] = [:]
        var stack: [String] = [beginWord]

        let qwerty: String = "qwertyuiopasdfghjklzxcvbnm"

        for w in wordList {
            map[w] = true
        }

        if map[endWord] == nil {
            return 0
        }

        while !stack.isEmpty {
            ans += 1
            var newStack: [String] = []

            for word in stack {
                for i in 0..<word.count {
                    var wArray = Array(word)
                    for ch in qwerty {
                        wArray[i] = ch
                        let w = String(wArray)
                        if map[w] != nil && prev[w] == nil {
                            if w == endWord {
                                return ans
                            }
                            newStack.append(w)
                            prev[w] = true
                            map[w] = nil
                        }
                    }

                }
            }

            stack = newStack
        }

        return 0
    }
}