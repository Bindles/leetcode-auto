class Solution:
    def countDistinctIntegers(self, nums: List[int]) -> int:
        rev_arr = [int(str(num)[::-1]) for num in nums]
        nums.extend(rev_arr)
        return len(set(nums))