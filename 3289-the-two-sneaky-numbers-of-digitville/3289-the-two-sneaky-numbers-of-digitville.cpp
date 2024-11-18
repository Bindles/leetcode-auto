class Solution {
public:
    vector<int> getSneakyNumbers(vector<int>& nums) {
        vector<int> res;
        unordered_map<int, int> countMap;
        for (int num : nums) countMap[num]++; 

        for (const auto& [num, count] : countMap) {
            if (count > 1) res.push_back(num);
        }

        return res;     
    }
};

