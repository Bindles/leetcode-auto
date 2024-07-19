class Solution:
    def secondHighest(self, s: str) -> int:
        res=[]
        for c in s:
            if c.isdigit():
                res.append(c)   

        if len(set(res)) > 1:
            res.remove(max(res))
            return int(max(res))
        else:
            return -1     



