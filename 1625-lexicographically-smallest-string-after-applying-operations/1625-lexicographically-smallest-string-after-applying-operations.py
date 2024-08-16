class Solution:
    def findLexSmallestString(self, s: str, a: int, b: int) -> str:
        seen = set()
        queue = deque([s])
        smallest = s

        while queue:
            current = queue.popleft()
            if current in seen:
                continue
            seen.add(current)
            smallest = min(smallest, current)

            # Apply operation 1: Add `a` to all odd-indexed positions
            modified = list(current)
            for i in range(1, len(modified), 2):
                modified[i] = str((int(modified[i]) + a) % 10)
            modified = ''.join(modified)
            if modified not in seen:
                queue.append(modified)

            # Apply operation 2: Rotate string by `b` positions
            rotated = current[-b:] + current[:-b]
            if rotated not in seen:
                queue.append(rotated)

        return smallest        