class Solution:
    def rearrangeArray(self, nums: List[int]) -> List[int]:
        positives = [num for num in nums if num > 0]
        negatives = [num for num in nums if num <= 0]
        return [num for group in zip(positives, negatives) for num in group]