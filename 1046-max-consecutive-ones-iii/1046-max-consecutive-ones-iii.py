class Solution:
    def longestOnes(self, nums: List[int], k: int) -> int:
        zero_count = 0
        left = 0
        max_length = 0

        for index, num in enumerate(nums):
            if num == 0:
                zero_count += 1
            
            while zero_count > k:
                if nums[left] == 0:
                    zero_count -= 1
                left += 1
            
            max_length = max(index - left + 1, max_length)
        
        return max_length