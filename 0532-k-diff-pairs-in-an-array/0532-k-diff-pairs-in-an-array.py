class Solution:
    def findPairs(self, nums: List[int], k: int) -> int:
        count=0
        seen=[]
        for i in range(len(nums)):
            for j in range(i+1,len(nums)):
                if abs(nums[i]-nums[j])==k and [nums[i]+nums[j]] not in seen:
                    seen.append([nums[i]+nums[j]])
                    count+=1
             
        return count