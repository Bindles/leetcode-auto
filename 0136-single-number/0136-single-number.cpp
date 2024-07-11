int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int singleNumber(vector<int>& nums) {
        std::unordered_map<int, int> tally;
        for(int num : nums) {
            tally[num]++;
        }
        for (const auto& pair : tally) {
            if (pair.second < 2) return pair.first ;
        }
        return -1; // should never reach here
    }
};