class Solution:
    def distributeCandies(self, n: int, limit: int) -> int:
        res = 0
        for i in range(limit + 1):
            min_candies = max(0, n - i - limit)
            max_candies = min(limit, n - i)
            res += max(0, max_candies - min_candies + 1)
        return res




