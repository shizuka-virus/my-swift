/**
 * 498. Diagonal Traverse
 * https://leetcode.com/problems/diagonal-traverse/
 */

class Solution {
    func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
        if (matrix.count < 1 || matrix[0].count < 1) {
            return []
        }
        let rows = matrix.count
        let cols = matrix[0].count
        var result: [Int] = []

        // up and right: dr = -1, dc = 1
        // down and left: dr = 1, dc = -1

        var r = 0, c = 0, dr = -1, dc = 1

        while r < rows && c < cols {
            result.append(matrix[r][c])
            r += dr
            c += dc
            if r < 0 || c < 0 || r >= rows || c >= cols {
                (dr, dc) = (dc, dr)
                if r >= rows {
                    r -= 1
                    c += 2
                } else if c < 0 {
                    c += 1
                }
                if c >= cols {
                    c -= 1
                    r += 2
                } else if r < 0 {
                    r += 1
                }
            }
        }

        return result
    }
}