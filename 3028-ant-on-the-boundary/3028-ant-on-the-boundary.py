class Solution:
    def returnToBoundaryCount(self, nums: List[int]) -> int:
        total, boundary_hits = 0, 0
        for num in nums:
            total += num
            if total == 0:
                boundary_hits += 1
        return boundary_hits
        