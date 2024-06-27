class Solution {
public:
    int findPairs(vector<int>& nums, int k) {
        int res = 0;
        std::unordered_set<int> seen_sums;
        
        for (size_t i = 0; i < nums.size(); ++i) {
            for (size_t j = i + 1; j < nums.size(); ++j) {
                if (std::abs(nums[i] - nums[j]) == k) {
                    int sum = nums[i] + nums[j];
                    if (seen_sums.find(sum) == seen_sums.end()) {
                        seen_sums.insert(sum);
                        res++;
                    }
                }
            }
        }
        
        return res;
    }
};