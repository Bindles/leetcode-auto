class Solution:
    def areNumbersAscending(self, s: str) -> bool:
        last=float('-inf')
        print(last)
        s = s.split(' ')
        print(s)
        for chr in s:
            if chr.isnumeric():
                if int(chr) > last:
                    last = int(chr)
                    next        
                else:
                    return False

        return True

        