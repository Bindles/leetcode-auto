class Solution:
    def rob(self, nums: List[int]) -> int:
        rob1 = rob2 = 0
        # [rob1, rob2, n, n+1, ...]
        for num in nums:
            # rob1, rob2 = rob2, max(num + rob1, rob2) # assign both 
            temp = max(num + rob1, rob2)
            rob1 = rob2
            rob2 = temp
            
        return rob2
