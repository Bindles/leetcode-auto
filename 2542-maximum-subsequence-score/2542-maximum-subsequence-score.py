class Solution:
    def maxScore(self, nums1: List[int], nums2: List[int], k: int) -> int:
        n = len(nums1)
        
        # Combine both arrays and sort by nums2 in descending order
        pairs = sorted(zip(nums1, nums2), key=lambda x: -x[1])
        
        # Min-heap to track the largest 'k' nums1 values
        min_heap = []
        sum_of_k = 0
        max_score = 0
        
        for n1, n2 in pairs:
            # Add the current nums1 value to the heap and update the sum
            heapq.heappush(min_heap, n1)
            sum_of_k += n1
            
            # If heap size exceeds k, remove the smallest element
            if len(min_heap) > k:
                sum_of_k -= heapq.heappop(min_heap)
            
            # If the heap has exactly k elements, compute the score
            if len(min_heap) == k:
                max_score = max(max_score, sum_of_k * n2)
        
        return max_score        