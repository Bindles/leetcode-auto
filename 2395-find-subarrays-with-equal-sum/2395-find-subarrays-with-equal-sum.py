class Solution:
    def findSubarrays(self, nums: List[int]) -> bool:
        res=[]
        for i in range(len(nums)-1):
            windowsum = nums[i] + nums[i+1]
            if windowsum in res: 
                return True 
            res.append(windowsum)

        return False        