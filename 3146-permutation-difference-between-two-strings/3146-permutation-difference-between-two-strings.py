class Solution:
    def findPermutationDifference(self, s: str, t: str) -> int:
        count=0
        sc = {char : index for index, char in enumerate(s)}
        tc = {char : index for index, char in enumerate(t)}

        for key in sc:
            count += (abs(sc[key] - tc[key]))

        return count
        