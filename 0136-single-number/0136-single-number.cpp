class Solution {
public:
    int singleNumber(vector<int>& nums) {
        for (int num : nums) {
            if (count(nums.begin(), nums.end(), num) < 2) {
                return num;
            }
        }
        return 0;
    }
};