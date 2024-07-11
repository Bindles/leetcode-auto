int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int singleNumber(vector<int>& nums) {
        int res = 0;
        for(int num : nums) {
            res ^= num;
        }
        return res;
    }
};