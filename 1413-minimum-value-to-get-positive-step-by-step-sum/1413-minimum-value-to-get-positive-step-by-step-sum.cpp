class Solution {
public:
    int minStartValue(vector<int>& nums) {
        int res=0, sum=0;
        for (int num : nums) {
            sum += num;
            if (sum < 1) {
                res += (1 - sum);
                sum = 1;
            }
        }
        return res == 0 ? 1 : res;       
    }
};
 