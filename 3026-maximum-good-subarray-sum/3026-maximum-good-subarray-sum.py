class Solution:
    def maximumSubarraySum(self, nums: List[int], k: int) -> int:
        n = len(nums)
        prefix_sum = [0] * (n + 1)
        for i, num in enumerate(nums):
            prefix_sum[i + 1] = prefix_sum[i] + num
        seen = {}
        result = float('-inf')
        for i, num in enumerate(nums):
            if num - k in seen:
                j = seen[num - k]
                result = max(result, prefix_sum[i + 1] - prefix_sum[j])
            if num + k in seen:
                j = seen[num + k]
                result = max(result, prefix_sum[i + 1] - prefix_sum[j])
            if num in seen:
                j = seen[num]
                if prefix_sum[i] - prefix_sum[j] < 0:
                    seen[num] = i
            else:
                seen[num] = i
        return result if result > float('-inf') else 0