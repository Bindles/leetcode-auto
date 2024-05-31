class Solution:
    def countVowelSubstrings(self, word: str) -> int:
        vowels = {'a', 'e', 'i', 'o', 'u'}
        n = len(word)

        return sum(
            1 for start in range(n)
            for end_pos in range(start, n)
            if set(word[start:end_pos + 1]).issubset(vowels) and vowels.issubset(word[start:end_pos + 1])
        )