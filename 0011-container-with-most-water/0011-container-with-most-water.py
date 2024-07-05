class Solution:
    def maxArea(self, heights: List[int]) -> int:
        left = result = 0 
        right = len(heights) - 1
        

        while left < right:
            result = max(result, min(heights[left], heights[right]) * (right - left))
            if heights[left] < heights[right]:
                left += 1
            elif heights[right] <= heights[left]:
                right -= 1
            
        return result
