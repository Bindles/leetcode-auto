class Solution:
    def oddString(self, words: List[str]) -> str:
        
        def consecutive_diff(word):
            # Helper function to calculate differences between consecutive character codes
            byte_values = list(map(ord, word))
            return [b - a for a, b in zip(byte_values, byte_values[1:])]

        # Group words by the differences between consecutive character codes
        grouped_words = {}
        for word in words:
            key = tuple(consecutive_diff(word))
            if key not in grouped_words:
                grouped_words[key] = []
            grouped_words[key].append(word)

        # Find the group that contains only one word
        for group in grouped_words.values():
            if len(group) == 1:
                return group[0]       