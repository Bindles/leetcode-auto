class Solution:
    def areNumbersAscending(self, s: str) -> bool:
        last=0
        s = s.split(' ')
        for chr in s:
            if chr.isnumeric():
                if int(chr) > last:
                    last = int(chr)
                    next        
                else:
                    return False

        return True

        