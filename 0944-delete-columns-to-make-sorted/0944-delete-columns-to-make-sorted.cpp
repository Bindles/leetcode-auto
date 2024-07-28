int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int minDeletionSize(vector<string>& strs) {
        int rows = strs.size(), cols = strs[0].size();
        vector<string> transposed(cols, string(rows, ' '));
        int count=0;
        
        for (int i=0;i<rows;++i) {
            for (int j=0;j<cols;++j) {
                transposed[j][i] = strs[i][j];
            }
        }

        for (const auto& col : transposed) { //string
            if (!is_sorted(col.begin(), col.end() ) ) {
                count++;
            }
        }
        return count;
    }
};