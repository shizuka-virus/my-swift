/**
 * 20. Valid Parentheses
 * https://leetcode.com/problems/valid-parentheses/
 */

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        for ch in s {
            switch ch {
                case "(", "[", "{": stack.append(ch)
                case ")": if stack.isEmpty || stack.removeLast() != "(" {
                    return false
                }
                case "]": if stack.isEmpty || stack.removeLast() != "[" {
                    return false
                }
                case "}": if stack.isEmpty || stack.removeLast() != "{" {
                    return false
                }
                default: return false
            }
        }
        return stack.isEmpty
    }
}