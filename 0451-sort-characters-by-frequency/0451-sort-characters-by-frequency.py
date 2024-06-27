class Solution:
    def frequencySort(self, s: str) -> str:
        scounter = Counter(s)
        sorted_scounter = sorted(scounter.items(), key=lambda chr: -chr[1])
        sorted_string = ''.join(char*freq for char,freq in sorted_scounter)
        return sorted_string