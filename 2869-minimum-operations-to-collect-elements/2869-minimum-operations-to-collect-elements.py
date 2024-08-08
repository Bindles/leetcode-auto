class Solution:
    def minOperations(self, nums: List[int], k: int) -> int:
        count = 0    
        rng = set(range(1, k + 1))
        
        while rng:
            num = nums.pop()
            rng.discard(num)
            count += 1
        
        return count
