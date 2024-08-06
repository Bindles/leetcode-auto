class Solution:
    def findSubarrays(self, nums: List[int]) -> bool:
        res=[]
        for i in range(len(nums)-1):
            windowsum = sum(nums[i:i+2])
            if windowsum in res: 
                return True 
            res.append(windowsum)

        return False        