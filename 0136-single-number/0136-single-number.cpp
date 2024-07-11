class Solution {
public:
    int singleNumber(vector<int>& nums) {
        auto it = find_if(nums.begin(), nums.end(), [&nums](int num) {
            return count(nums.begin(), nums.end(), num) != 2;
        });
        return (it != nums.end()) ? *it : -1; // Return -1 if no elem|should not reach.
    }
};