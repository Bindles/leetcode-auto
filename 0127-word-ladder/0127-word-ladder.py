class Solution:
    def ladderLength(self, beginWord: str, endWord: str, wordList: List[str]) -> int:
        queue = deque([(beginWord, 1)])
        visited=set([beginWord])

        while queue:
            word, level = queue.popleft()

            for i in range(len(word)):
                for letter in 'abcdefghijklmnopqrstuvqxyz':
                    new_word = word[:i] + letter + word[i+1:]
                    # [1]not exact same word[2]exists in wordlist[3]have not yet seen it
                    if new_word in wordList and new_word not in visited and new_word != word:
                        if new_word == endWord:
                            return level + 1

                        queue.append((new_word, level + 1))
                        visited.add(new_word)

        return 0

