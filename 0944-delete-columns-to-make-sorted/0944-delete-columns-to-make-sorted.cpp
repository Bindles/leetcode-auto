int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int minDeletionSize(vector<string>& strs) {
        int rows = strs.size();
        int cols = strs[0].size();
        int count = 0;

        for (int j = 0; j < cols; ++j) {
            for (int i = 1; i < rows; ++i) {
                if (strs[i][j] < strs[i - 1][j]) {
                    ++count;
                    break;
                }
            }
        }

        return count;
    }
};