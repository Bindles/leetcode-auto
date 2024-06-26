class Solution:
    def replaceWords(self, dictionary: List[str], sentence: str) -> str:
        words = sentence.split(' ')
        print(words)
        for keyword in dictionary:
            for i, word in enumerate(words):
                if word.startswith(keyword):
                    words[i] = keyword 

        return ' '.join(words)

        