/**
 * 1365. How Many Numbers Are Smaller Than the Current Number
 * https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
 */

// ~ 200 ms
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sorted = nums.sorted()
        return nums.map{sorted.firstIndex(of: $0)!}
    }
}

// ~ 500 ms
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        return nums.map{num in nums.filter{$0 < num}.count}
    }
}