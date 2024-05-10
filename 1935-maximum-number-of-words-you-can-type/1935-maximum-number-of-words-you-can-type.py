class Solution:
    def canBeTypedWords(self, text: str, brokenLetters: str) -> int:
        return sum(not any(char in brokenLetters for char in word) for word in text.split())
        