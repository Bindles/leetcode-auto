class Solution:
    def minOperations(self, nums: List[int], k: int) -> int:
        count=0
        while not all(alls >= k for alls in nums):
            count+=1
            nums.remove(min(nums))
        return count