class Solution:
    def shortestToChar(self, s: str, c: str) -> List[int]:
        res = []
        nums = [i for i, char in enumerate(s) if char == c]
        
        for i in range(len(s)):
            closest = min(nums, key=lambda x: abs(x - i))
            res.append(abs(i - closest))
        
        return res
        