class Solution:
    def duplicateNumbersXOR(self, nums: List[int]) -> int:
        dupes = set(num for num in nums if nums.count(num) > 1)
        return reduce(lambda x, y: x ^ y, dupes, 0)
        