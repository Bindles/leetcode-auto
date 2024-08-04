int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int lastStoneWeight(vector<int>& stones) {
        sort(stones.begin(), stones.end(), greater<int>());

        while (stones.size() > 1) {
            //Take the first 2 stones
            int first = stones[0];
            int second = stones[1];

            //Erase from Array
            stones.erase(stones.begin());
            stones.erase(stones.begin());

            //Smash
            if (first != second) {
                stones.push_back(first - second);
                sort(stones.begin(), stones.end(), greater<int>());
            }
        }
        return stones.empty() ? 0 : stones[0];   
    }
};
