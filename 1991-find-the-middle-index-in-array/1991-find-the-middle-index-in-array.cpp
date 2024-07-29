int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int findMiddleIndex(vector<int>& nums) {
        int total = accumulate(nums.begin(), nums.end(), 0);
        int left_sum = 0, right_sum = 0;

        for (int index=0;index<nums.size();++index) {
            int cur_value = nums[index];
            right_sum = total - left_sum - cur_value;
            if (left_sum == right_sum) return index;
            left_sum += cur_value;
        }
        return -1;
    }
};

