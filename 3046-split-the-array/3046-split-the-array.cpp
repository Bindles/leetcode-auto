class Solution {
public:
    bool isPossibleToSplit(vector<int>& nums) {
        unordered_map<int, int> nums_counts;
        for (int num : nums) nums_counts[num]++;

        return all_of(nums_counts.begin(), nums_counts.end(), [](const auto& pair) {
            return pair.second <= 2;
        });
    }
};


