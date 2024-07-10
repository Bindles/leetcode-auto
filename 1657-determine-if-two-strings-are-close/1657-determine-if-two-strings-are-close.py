class Solution:
    def closeStrings(self, word1: str, word2: str) -> bool:
        w1 = Counter(word1)
        w2 = Counter(word2)

        if  w1.keys() != w2.keys():
            return False
            
        if sorted(w1.values()) != sorted(w2.values()):
            return False

        return True