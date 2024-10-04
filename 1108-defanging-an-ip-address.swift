/**
 * 1108. Defanging an IP Address
 * https://leetcode.com/problems/defanging-an-ip-address/
 */

class Solution {
    func defangIPaddr(_ address: String) -> String {
        return address.replacingOccurrences(of: ".", with: "[.]")
    }
}