class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int maxprofit = 0;
        int left = 0;
        for (int right = 1; right < prices.size(); ++right) {
            if (prices[left] > prices[right]) {
                left = right;
            } else {
                maxprofit = max(maxprofit, prices[right] - prices[left]);
            }
        }
        return maxprofit;
    }
};
 