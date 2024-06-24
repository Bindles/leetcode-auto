class Solution:
    def occurrencesOfElement(self, nums: List[int], queries: List[int], x: int) -> List[int]:
        occurences = [i for i, num in enumerate(nums) if num == x]
        return [occurences[query - 1] if query <= len(occurences) else -1 for query in queries]
        