class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i in range(1, len(nums)):
            for j in range(i, len(nums)):
                if nums[j] + nums[j - i] == target: return [j - i, j]
                
        return [-1, -1]
