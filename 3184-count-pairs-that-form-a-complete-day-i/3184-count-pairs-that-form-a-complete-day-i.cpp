class Solution {
public:
    int countCompleteDayPairs(vector<int>& hours) {
        int count = 0;
        unordered_map<int, int> hash;
        for(auto h: hours){
            count += hash[(24 - h%24)%24];
            hash[h%24]++;
        }
        return count;
    }
};