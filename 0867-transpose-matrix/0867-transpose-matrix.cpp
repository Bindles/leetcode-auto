int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    vector<vector<int>> transpose(vector<vector<int>>& matrix) {
        int rows = matrix.size();
        int cols = matrix[0].size();
        vector<vector<int>> transp(cols, vector<int>(rows));
        for (int i=0; i < rows; ++i) {
            for (int j=0; j < cols; ++j) {
                transp[j][i] = matrix[i][j];
            }
        }
        return transp;
    }
};