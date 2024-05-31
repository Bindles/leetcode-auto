class Solution:
    def countVowelSubstrings(self, word: str) -> int:
        vowels = {'a', 'e', 'i', 'o', 'u'}
        n=len(word)
        count=0
        for start in range(n):
            for end_pos in range(start,n):
                substring=word[start:end_pos+1]
                print(substring)
                if set(substring).issubset(vowels) and vowels.issubset(substring):
                    count+=1
                    print(count)

        return count
        