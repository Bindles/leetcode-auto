class Solution:
    def frequencySort(self, s: str) -> str:
        # Sort chars by frequency in descending order and generate sorted string
        return ''.join(char * freq for char, freq in sorted(Counter(s).items(), key=lambda x: -x[1]))