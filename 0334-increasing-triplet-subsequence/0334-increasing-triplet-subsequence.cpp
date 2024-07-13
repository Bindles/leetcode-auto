int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    bool increasingTriplet(vector<int>& nums) {
        for (int i=0;i<nums.size()-2;++i) {
            for (int j=i+1;j<nums.size()-1;++j) {
                for (int k=j+1;k<nums.size();++k) {
                    if (nums[i] < nums[j] && nums[j] < nums[k]) {
                        return true;
                    }
                }
            }
        }

        return false;       
    }
};