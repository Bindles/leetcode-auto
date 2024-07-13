int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int maxOperations(vector<int>& nums, int k) {
        int count=0;
        unordered_map<int,int> numcount;

        for (int num : nums) {
            int complement = k - num;
            if (numcount[complement] > 0) {
                count++;;
                numcount[complement]-=1;
            } else {
                numcount[num]+=1;
            }
        }
        return count;
    }
};