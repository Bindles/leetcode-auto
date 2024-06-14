class Solution:
    def countTriplets(self, arr: List[int]) -> int:
        result = 0
        n = len(arr)
        for i, val in enumerate(arr):
            for k in range(i + 1, n):
                val = xor(val, arr[k])
                if val == 0:
                    result += k - i
        return result