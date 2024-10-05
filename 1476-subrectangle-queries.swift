/**
 * 1476. Subrectangle Queries
 * https://leetcode.com/problems/subrectangle-queries/
 */


class SubrectangleQueries {

    var rectangle: [[Int]];

    init(_ rectangle: [[Int]]) {
        self.rectangle = rectangle
    }

    func updateSubrectangle(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int, _ newValue: Int) {
        for r in row1...row2 {
            for c in col1...col2 {
                self.rectangle[r][c] = newValue
            }
        }
    }

    func getValue(_ row: Int, _ col: Int) -> Int {
        return self.rectangle[row][col]
    }
}

/**
 * Your SubrectangleQueries object will be instantiated and called as such:
 * let obj = SubrectangleQueries(rectangle)
 * obj.updateSubrectangle(row1, col1, row2, col2, newValue)
 * let ret_2: Int = obj.getValue(row, col)
 */