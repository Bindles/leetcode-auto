class Solution:
    def canJump(self, nums: List[int]) -> bool:
        max_reach = i = 0
        while i <= max_reach < len(nums) - 1:
            max_reach = max(max_reach, i + nums[i])
            i += 1
        return max_reach >= len(nums) - 1