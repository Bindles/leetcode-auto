int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int minOperations(vector<int>& nums, int k) {
        int count = 0;
        unordered_set<int> rng;
        for (int i=1; i<=k; ++i) rng.insert(i);

        while (!rng.empty()) {
            int num = nums.back();
            nums.pop_back();
            rng.erase(num);
            count++;
        }
        return count;
    }
};


