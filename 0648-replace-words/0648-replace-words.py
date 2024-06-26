class Solution:
    def replaceWords(self, dictionary: List[str], sentence: str) -> str:
        result = ''
        dictionary.sort(key=len)
        words = sentence.split(' ')

        for word in words:
            sub_str = word
            for item in dictionary:
                if sub_str.startswith(item):
                    sub_str = item
                    break
            result += sub_str + ' '

        return result.strip()

        