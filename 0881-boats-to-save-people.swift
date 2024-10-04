/**
 * 881. Boats to Save People
 * https://leetcode.com/problems/boats-to-save-people/
 */

class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        let people = people.sorted()
        var ans = 0, l = 0, r = people.count-1

        while l <= r {
            r -= 1
            ans += 1
            if l <= r && people[l] <= limit - people[r+1] {
                l += 1
            }
        }

        return ans
    }
}