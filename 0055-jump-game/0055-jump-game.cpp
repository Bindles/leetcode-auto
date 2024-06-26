class Solution {
public:
    bool canJump(vector<int>& nums) {
        int maxr = 0;
        int i = 0;
        while (i<=maxr) {
            maxr = max(maxr, i + nums[i]);
            i++;
            if (maxr >= nums.size()- 1) return true;
        }
        return false;
    }   
};
