#define FIO ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);
class Solution {
public:
    int distributeCandies(vector<int>& candyType) {
        bitset<200001>bits;        
        for(auto i : candyType)bits.set(i+100000);
        return min(candyType.size()/2,bits.count());        
    }
};