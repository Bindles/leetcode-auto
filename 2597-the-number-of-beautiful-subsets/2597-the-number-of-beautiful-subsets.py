class Solution:
    def beautifulSubsets(self, nums: List[int], k: int) -> int:
        total_subsets = 0
        subsets = defaultdict(int)
        nums.sort(key=lambda x: (x % k, x))
        for num in nums:
            new_subsets = total_subsets + 1 - subsets[num - k]
            subsets[num] += new_subsets
            total_subsets += new_subsets
        return total_subsets