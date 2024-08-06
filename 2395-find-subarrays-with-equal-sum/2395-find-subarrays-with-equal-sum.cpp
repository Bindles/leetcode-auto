class Solution {
public:
    bool findSubarrays(vector<int>& nums) {
        vector<int> res;
        for (int i=0; i < nums.size()-1; ++i) {
            int windowSum = nums[i] + nums[i+1];

            for (int sum : res) {
                if (sum == windowSum) return true;
            }
            
            res.push_back(windowSum);
        }
        return false;
    }
};
