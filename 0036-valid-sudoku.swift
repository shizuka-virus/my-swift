/**
 * 36. Valid Sudoku
 * https://leetcode.com/problems/valid-sudoku/
 */

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var map: [String: Bool] = [:]
        for r in 0...8 {
            for c in 0...8 {
                if board[r][c] != "." {
                    let rkey = "r\(r)-\(board[r][c])"
                    let ckey = "c\(c)-\(board[r][c])"
                    let skey = "s\(floor(Double(r/3)))\(floor(Double(c/3)))-\(board[r][c])"
                    if map[rkey] != nil || map[ckey] != nil || map[skey] != nil {
                        return false
                    }
                    (map[rkey], map[ckey], map[skey]) = (true, true, true)
                }
            }
        }
        return true
    }
}