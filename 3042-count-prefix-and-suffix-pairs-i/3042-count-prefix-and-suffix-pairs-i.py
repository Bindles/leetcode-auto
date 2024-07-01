class Solution:
    def countPrefixSuffixPairs(self, words: List[str]) -> int:
        result = 0
        for num, word in enumerate(words):
            result += sum(1 for w in words[:num] if word.startswith(w) and word.endswith(w))
        return result





