class Solution:
    def checkDistances(self, s: str, distance: List[int]) -> bool:
        alphabet='abcdefghijklmnopqrstuvwxyz'
        dist = {char: distance[i] for i, char in enumerate(alphabet)}       
        lastSeen = defaultdict(lambda: -1)

        for index, char in enumerate(s):
            if lastSeen[char] != -1:
                if dist[char] != (index - lastSeen[char] - 1): return False
            else:
                lastSeen[char] = index

        return True


      



