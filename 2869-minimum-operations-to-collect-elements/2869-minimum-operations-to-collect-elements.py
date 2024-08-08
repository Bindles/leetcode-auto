class Solution:
    def minOperations(self, nums: List[int], k: int) -> int:
        count = 0    
        res = []
        rng = range(1, k + 1)
        
        while not all(x in res for x in rng):
            res.append(nums.pop())
            count += 1
        
        return count
        