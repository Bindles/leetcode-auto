class Solution:
    def minFlips(self, target: str) -> int:
        current_state = "0"
        count=0

        for char in target:
            if char != current_state:
                count += 1
                current_state = char
                
        return count