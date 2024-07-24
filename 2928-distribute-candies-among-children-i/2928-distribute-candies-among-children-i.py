class Solution:
    def distributeCandies(self, n: int, limit: int) -> int:
        return sum(
            max(0, min(limit, n - i) - max(0, n - i - limit) + 1)
            for i in range(limit + 1) 
        )




