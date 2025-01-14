class Solution:
    def stringMatching(self, words: List[str]) -> List[str]:
        words.sort(key=len)
        return [word for word in words if any(word != w and word in w for w in words)]