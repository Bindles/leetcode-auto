class Solution:
    def removeTrailingZeros(self, num: str) -> str:
        return str(int(str(num)[::-1]))[::-1]
    