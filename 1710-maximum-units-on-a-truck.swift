/**
 * 1710. Maximum Units on a Truck
 * https://leetcode.com/problems/maximum-units-on-a-truck/
 */

class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        var boxTypes = boxTypes.sorted(by: {$1[1] - $0[1] > 0}),
            truckSize = truckSize,
            result = 0

        while boxTypes.count > 0 && truckSize > 0 {
            let box = boxTypes.removeLast()
            result += box[1] * min(box[0], truckSize)
            truckSize -= box[0]
        }

        return result
    }
}