int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int minOperations(vector<int>& nums, int k) {
        int count = 0;
        vector<int> res;
        vector<int> range(k);
        iota(range.begin(), range.end(), 1);

        while (all_of(range.begin(), range.end(), [&res](int x) { 
            return find(res.begin(), res.end(), x) != res.end(); 
        }) == false) {
            res.push_back(nums.back());
            nums.pop_back();
            count++;
        }
        return count;
    }
};