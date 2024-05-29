from functools import reduce
class Solution:
    def duplicateNumbersXOR(self, nums: List[int]) -> int:
        return sum(num for num in {num for num in nums if nums.count(num) > 1})
        