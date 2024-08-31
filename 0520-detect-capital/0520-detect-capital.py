class Solution:
    def detectCapitalUse(self, word: str) -> bool:
        # Check if all letters are uppercase
        if word == word.upper():
            return True
        
        # Check if all letters are lowercase
        if word == word.lower():
            return True
        
        # Check if only the first letter is uppercase
        if word[0].isupper() and word[1:].islower():
            return True
        
        return False
        