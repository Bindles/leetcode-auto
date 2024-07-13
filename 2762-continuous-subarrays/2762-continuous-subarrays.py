class Solution:
    def continuousSubarrays(self, nums: List[int]) -> int:
        i = res = 0
        d = dict()
        for j, num in enumerate(nums):
            dc = d.copy()
            for key, val in dc.items():
                if abs(key - num) > 2:
                    i = max(i, val + 1)
                    d.pop(key)
            d[num] = j
            res += j - i + 1
        return res