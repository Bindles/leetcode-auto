class Solution {
public:
    int findChampion(vector<vector<int>>& grid) {
        int rows = grid.size();
        if (rows == 0) return -1;
        int cols = grid[0].size();

        for (int col = 0; col < cols; ++col) {
            bool allZeros = true;
            for (int row = 0; row < rows; ++row) {
                if (grid[row][col] != 0) {
                    allZeros = false;
                    break;
                }
            }
            if (allZeros) return col;
        }
        return -1;  
    }
};