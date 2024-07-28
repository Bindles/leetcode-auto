int init=[]{std::ios_base::sync_with_stdio(false);std::cin.tie(nullptr);std::cout.tie(nullptr);return 0;}();
class Solution {
public:
    int distributeCandies(vector<int>& candyType) {
        bitset<200001>bits;        
        for(auto i : candyType)bits.set(i+100000);
        return min(candyType.size()/2,bits.count());        
    }
};