class Solution:
    def isPrefixOfWord(self, sentence: str, searchWord: str) -> int:
        sentences = sentence.split(' ')
        for i,sent in enumerate(sentences):
            if sent.startswith(searchWord):
                return i+1
        
        return -1
        