class Solution {
public:
    bool findSubarrays(vector<int>& nums) {
        unordered_set<int> res;
        for (int i=0; i < nums.size()-1; ++i) {
            int windowSum = nums[i] + nums[i+1];
            if (res.find(windowSum) != res.end()) return true;
            res.insert(windowSum);
        }
        return false;
    }
};
