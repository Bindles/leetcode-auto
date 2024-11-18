class Solution {
public:
    vector<int> getSneakyNumbers(vector<int>& nums) {
        vector<int> res;
        unordered_map<int, int> countMap;
        for (int num : nums) countMap[num]++;

        // Debug: Print the countMap
        cout << "CountMap:" << endl;
        for (const auto& [num, count] : countMap) {
            cout << "Number: " << num << ", Count: " << count << endl;
        }   

        for (const auto& [num, count] : countMap) {
            if (count > 1) res.push_back(num);
        }

        return res;     
    }
};

