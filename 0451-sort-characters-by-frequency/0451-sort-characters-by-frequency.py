class Solution:
    def frequencySort(self, s: str) -> str:
        scounter = Counter(s) #tally freq of chars in s
        # Sort characters by frequency in descending order
        sorted_scounter = sorted(scounter.items(), key=lambda chr: -chr[1])
        # Generate sorted string by repeating characters according to freq
        sorted_string = ''.join(char*freq for char,freq in sorted_scounter)
        return sorted_string