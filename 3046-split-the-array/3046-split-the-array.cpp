class Solution {
public:
    bool isPossibleToSplit(vector<int>& nums) {
        unordered_map<int, int> nums_counts;
        for (int num : nums) nums_counts[num]++;
        
        auto max_count = max_element(nums_counts.begin(), nums_counts.end(), [](const auto& a, const auto& b) {
            return a.second < b.second;
        });

        return max_count != nums_counts.end() && max_count->second <= 2;
    }
};


