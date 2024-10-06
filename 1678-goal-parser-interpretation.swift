/**
 * 1678. Goal Parser Interpretation
 * https://leetcode.com/problems/goal-parser-interpretation/
 *
 * https://leetcode.com/problems/goal-parser-interpretation/discuss/961778/PHP-JavaScript-Swift-One-line-100-fast-with-explanation
 */

 class Solution {
     func interpret(_ command: String) -> String {
         return command.replacingOccurrences(of: "()", with: "o").replacingOccurrences(of: "(al)", with: "al")
     }
 }