class Solution {
public:
    bool isPossibleToSplit(vector<int>& nums) {
       unordered_map<int,int> nums_counts;
       for (int num : nums) nums_counts[num]++;

       for (const auto& pair : nums_counts) {
        cout << pair.second << endl;
        if (pair.second > 2) {
            return false;
        }
       }
       return true;
    }
};



