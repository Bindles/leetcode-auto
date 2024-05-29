class Solution:
    def duplicateNumbersXOR(self, nums: List[int]) -> int:
        return reduce(lambda x, y: x ^ y, {num for num in nums if nums.count(num) > 1}, 0)
        