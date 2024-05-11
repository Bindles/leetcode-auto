class Solution:
    def maximumSubarraySum(self, nums: List[int], k: int) -> int:
        freq = {}
        max_sum = 0
        sum_val = 0
        left = 0

        for right in range(len(nums)):
            while freq.get(nums[right], 0) and left <= right:
                sum_val -= nums[left]
                freq[nums[left]] -= 1
                left += 1

            freq[nums[right]] = freq.get(nums[right], 0) + 1
            sum_val += nums[right]

            if right - left + 1 == k:
                max_sum = max(max_sum, sum_val)
                sum_val -= nums[left]
                freq[nums[left]] -= 1
                left += 1

        return max_sum  