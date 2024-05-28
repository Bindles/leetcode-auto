class Solution:
    def wordBreak(self, s: str, wordDict: List[str]) -> bool:
        return (f:=lambda i:[s[i:]]*(s[i:] in wordDict)+[s[i:j]+' '+t for j in range(i+1,len(s)) if s[i:j] in wordDict for t in f(j)])(0)