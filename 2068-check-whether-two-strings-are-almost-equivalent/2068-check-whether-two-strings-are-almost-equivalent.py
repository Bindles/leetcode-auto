class Solution:
    def checkAlmostEquivalent(self, word1: str, word2: str) -> bool:
        charCounts = defaultdict(int)
        for c in word1: charCounts[c]+=1
        for c in word2: charCounts[c]-=1

        for v in charCounts.values():
            if abs(v) > 3:
                return False
        return True



       



