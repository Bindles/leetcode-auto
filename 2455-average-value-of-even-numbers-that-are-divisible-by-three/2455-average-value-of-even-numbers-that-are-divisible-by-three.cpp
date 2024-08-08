int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int averageValue(vector<int>& nums) {
        vector<int> s_nums;
        copy_if(nums.begin(), nums.end(), back_inserter(s_nums), [](int num) {
            return num % 6 == 0;
        });
        int sumx = accumulate(s_nums.begin(), s_nums.end(), 0);
        return s_nums.empty() ? 0 : sumx / s_nums.size();
    }
};


