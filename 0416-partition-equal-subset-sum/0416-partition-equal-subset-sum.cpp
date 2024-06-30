class Solution {
public:
    bool canPartition(vector<int>& nums) {
        int sum = accumulate(nums.begin(), nums.end(), 0);
        if (sum % 2 == 1) {
            return false;
        }

        vector<vector<bool>> dp(nums.size() + 1, vector<bool>((sum / 2) + 1, false));
        for (int i = 0; i < nums.size() + 1; i++) {
            for (int j = 0; j < (sum / 2) + 1; j++) {
                if (j == 0) {
                    dp[i][j] = true;
                } else if (i == 0) {
                    dp[i][j] = false;
                } else if (nums[i - 1] > j) {
                    dp[i][j] = dp[i - 1][j];
                } else {
                    dp[i][j] = dp[i - 1][j] || dp[i - 1][j - nums[i - 1]];
                }
            }
        }

        return dp[nums.size()][sum / 2];
    }
};
