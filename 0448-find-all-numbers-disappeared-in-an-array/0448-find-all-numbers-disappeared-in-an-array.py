class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        allnums = set( range(1, len(nums)+1) )
        return list(allnums - set(nums))
        