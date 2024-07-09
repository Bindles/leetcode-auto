class Solution:
    def ladderLength(self, beginWord: str, endWord: str, wordList: List[str]) -> int:
        graph = defaultdict(list)

        for word in wordList:
            for i in range(len(beginWord)):
                graph[word[:i] + '*' + word[i+1:]].append(word)

        print(graph) 
        queue = collections.deque([(beginWord, 1)])
        visited = {beginWord:True}

        while queue:
            cur, level = queue.popleft()
            for i in range(len(beginWord)):
                inter = cur[:i] + '*' + cur[i+1:]

                for word in graph[inter]:
                    if word == endWord:
                        return level + 1

                    if word not in visited:
                        visited[word] = True
                        queue.append((word, level + 1))

                graph[inter] = []

        return 0 
        