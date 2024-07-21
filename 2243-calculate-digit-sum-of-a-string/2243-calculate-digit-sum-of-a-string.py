class Solution:
    def digitSum(self, s: str, k: int) -> str:
        while len(s) > k:
            res = ''
            for i in range(0, len(s), k):
                slice = s[i:i + k]
                res += str(sum(int(char) for char in slice))
            s = res
            
        return s