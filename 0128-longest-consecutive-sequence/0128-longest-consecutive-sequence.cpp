class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        if (nums.empty()) return 0; // End early
        int longest = 1, current = 1; // Define vars      
        sort(nums.begin(), nums.end()); // Sort 
        nums.erase(unique(nums.begin(), nums.end()), nums.end());  // Make Uniq

        for (size_t i = 1; i < nums.size(); ++i) {
            if (nums[i] == nums[i - 1] + 1) {
                current += 1;
            } else {
                longest = max(longest, current);
                current = 1;
            }
        }

        return max(longest, current);
    }
};

