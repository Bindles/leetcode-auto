class Solution:
    def canJump(self, nums: List[int]) -> bool:  
       maxReach=0
       i=0
       while i <= maxReach:
          maxReach=max(maxReach, i+nums[i])
          i+=1
          if maxReach >= len(nums)-1:
             return True
