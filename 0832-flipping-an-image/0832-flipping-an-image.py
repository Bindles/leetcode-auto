class Solution:
    def flipAndInvertImage(self, image: List[List[int]]) -> List[List[int]]:
        reversed_image =[row[::-1] for row in image]
        result = [[1 if el == 0 else 0 for el in row] for row in reversed_image]   
        return result
        