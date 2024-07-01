class Solution:
    def minOperations(self, logs: List[str]) -> int:
        curFol=0
        for log in logs:
            if log == '../':
                if curFol != 0:
                    curFol-=1 
            elif log != './':
                curFol+=1

        return curFol
        