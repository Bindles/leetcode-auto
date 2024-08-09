int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int minFlips(vector<vector<int>>& grid) {
        int m = grid.size() / 2, n = grid[0].size() / 2;
        int row_ans = 0, col_ans = 0;

        for (const auto& row : grid) {
            for (int i = 0; i < n; ++i) {
                row_ans += row[i] ^ row[row.size() - i - 1];
            }
        }

        for (int j = 0; j < grid[0].size(); ++j) {
            for (int i = 0; i < m; ++i) {
                col_ans += grid[i][j] ^ grid[grid.size() - i - 1][j];
            }
        }

        return min(row_ans, col_ans);
    }
};