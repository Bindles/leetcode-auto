class Solution {
public:
    int longestSubarray(vector<int>& nums, int limit) {
        deque<int> max_deque, min_deque;
        int left = 0;
        int result = 0;

        for (int right = 0; right < nums.size(); ++right) {
            int num = nums[right];
            while (!max_deque.empty() && max_deque.back() < num) {
                max_deque.pop_back();
            }
            max_deque.push_back(num);

            while (!min_deque.empty() && min_deque.back() > num) {
                min_deque.pop_back();
            }
            min_deque.push_back(num);

            while (max_deque.front() - min_deque.front() > limit) {
                if (max_deque.front() == nums[left]) {
                    max_deque.pop_front();
                }
                if (min_deque.front() == nums[left]) {
                    min_deque.pop_front();
                }
                ++left;
            }

            result = max(result, right - left + 1);
        }

        return result;
    }

};