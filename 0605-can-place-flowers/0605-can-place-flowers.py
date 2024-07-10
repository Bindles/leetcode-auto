class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        for i in range(len(flowerbed)):
            if n < 1: break
            elif not 1 in flowerbed[ max(0, i-1):i+2]: 
                flowerbed[i] = 1
                n-=1
        return n < 1