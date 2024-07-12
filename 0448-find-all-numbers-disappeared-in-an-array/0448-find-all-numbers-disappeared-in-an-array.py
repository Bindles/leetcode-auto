class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        allnums = set( range(1, len(nums)+1) )
        for num in set(nums):
            allnums.discard(num)

        return list(allnums)
        