/**
 * 1512. Number of Good Pairs
 * https://leetcode.com/problems/number-of-good-pairs/
 */

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var prev: [Int: Int] = [:]

        for num in nums {
            prev[num] = (prev[num] ?? 0) + 1
        }

        return prev.filter{$0.value > 1}.map{$0.value * ($0.value-1) / 2}.reduce(0, +)
    }
}