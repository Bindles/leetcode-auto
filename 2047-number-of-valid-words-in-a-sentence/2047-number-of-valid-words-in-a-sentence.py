class Solution:
    def countValidWords(self, sentence: str) -> int:
        count=0
        cleaned_sentence = sentence.replace(',', '').replace('.', '').replace('-', '')
        for word in cleaned_sentence.split(' '):
            if word.isalpha():
                print(word)
                count+=1

        return count