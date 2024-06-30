class Solution {
public:
    int maximumLength(vector<int>& nums) {
        vector<vector<int>> dp(2, vector<int>(2, 0));
        for (int num : nums) {
            num %= 2;
            dp[num][0] = 1 + dp[0][num];
            dp[num][1] = 1 + dp[1][num];
        }

        return max(max(dp[0][0], dp[0][1]), max(dp[1][0], dp[1][1]));
    }
};