class Solution:
    def countPrimes(self, n: int) -> int:
        if n < 3: return 0
        primeList = [1] * (n//2)
        
        for i in range(3, int(n**0.5) + 1, 2):
            if primeList[i//2]:
                primeList[(i*i)//2::i] = [0] * len(primeList[(i*i)//2::i])
                
        return sum(primeList)