class Solution:
    def checkArray(self, nums: List[int], k: int) -> bool:
        n = len(nums)
        for i in range(n-k):
            nums[i+k] += nums[i]
        for i in range(n-1):
            if nums[i]>nums[i+1]:
                return False
            if i>= n-k and nums[i] != nums[i+1]:
                return False
        return True
        