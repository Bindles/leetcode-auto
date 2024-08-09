impl Solution {
    pub fn min_flips(grid: Vec<Vec<i32>>) -> i32 {
        let m = grid.len() / 2;
        let n = grid[0].len() / 2;
        let mut row_ans = 0;
        let mut col_ans = 0;

        for row in &grid {
            row_ans += (0..n).map(|i| row[i] ^ row[row.len() - i - 1]).sum::<i32>();
        }

        for j in 0..grid[0].len() {
            for i in 0..m {
                col_ans += grid[i][j] ^ grid[grid.len() - i - 1][j];
            }
        }

        row_ans.min(col_ans)
    }
}