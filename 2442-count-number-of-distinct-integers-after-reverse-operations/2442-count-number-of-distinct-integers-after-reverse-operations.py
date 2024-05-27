class Solution:
    def countDistinctIntegers(self, nums: List[int]) -> int:
        strArr = [str(num) for num in nums]
        revArr = [int(num[::-1]) for num in strArr]

        for num in revArr:
            nums.append(num)
            
        return len(set(nums))