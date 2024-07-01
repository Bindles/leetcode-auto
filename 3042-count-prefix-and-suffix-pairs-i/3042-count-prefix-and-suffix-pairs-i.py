class Solution:
    def countPrefixSuffixPairs(self, words: List[str]) -> int:
        return sum(sum(1 for w in words[:num] if word.startswith(w) and word.endswith(w)) for num, word in enumerate(words))


