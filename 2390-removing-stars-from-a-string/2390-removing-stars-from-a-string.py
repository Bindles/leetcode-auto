class Solution:
    def removeStars(self, s: str) -> str:
        i = 0  
        s = list(s)  
        for c in s:  
            if c != '*':  
                s[i] = c
                i += 1  
            else:  
                i -= 1
        return ''.join(s[:i])         