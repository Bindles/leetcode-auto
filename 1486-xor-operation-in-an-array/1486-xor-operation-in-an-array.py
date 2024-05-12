class Solution:
    def xorOperation(self, n: int, start: int) -> int:
        total=0
        arr = [0] * n
        res = [start + num + 2 * i for i, num in enumerate(arr)]
        for num in res:
            total ^= num

        return total
        