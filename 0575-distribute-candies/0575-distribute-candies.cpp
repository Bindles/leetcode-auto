int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int distributeCandies(vector<int>& candyType) {
        unordered_set<int> uniq_candies(candyType.begin(), candyType.end());
        return min(candyType.size() / 2, uniq_candies.size());
    }
};