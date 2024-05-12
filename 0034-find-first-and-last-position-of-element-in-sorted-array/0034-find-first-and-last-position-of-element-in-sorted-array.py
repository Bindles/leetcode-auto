class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        res=[]
        for i, num in enumerate(nums):
            if num == target:
                res.append(i)

        if len(res) == 0:
            return [-1, -1]
        else:
            return [res[0], res[-1]]