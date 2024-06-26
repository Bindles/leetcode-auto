class Solution:
    def replaceWords(self, dictionary: List[str], sentence: str) -> str:
        result = ''
        dictionary.sort(key=len)
        words = sentence.split(' ')

        for word in words:
            for item in dictionary:
                if word.startswith(item):
                    word = item
                    break
            result += word + ' '

        return result.strip()

        