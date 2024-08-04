class Solution {
public:
    int arraySign(vector<int>& nums) {
        int product = accumulate(nums.begin(), nums.end(), 1, multiplies<size_t>());
        if (product > 0) return 1;
        else if (product == 0) return 0;
        else return -1;
    }
};