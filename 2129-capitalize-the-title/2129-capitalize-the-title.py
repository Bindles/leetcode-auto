class Solution:
    def capitalizeTitle(self, title: str) -> str:
        words = title.split(' ')
        for i in range(len(words)):
            words[i] = words[i].lower() if len(words[i]) <= 2 else words[i].capitalize()

        return ' '.join(words)
        

