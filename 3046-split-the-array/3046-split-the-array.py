class Solution:
    def isPossibleToSplit(self, nums: List[int]) -> bool:
        return all(count <=2 for _,count in Counter(nums).items())
        

