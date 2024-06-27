class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        # Calculate frequency counts using Counter
        nums1count = Counter(nums1)
        nums2count = Counter(nums2)
        
        # Find common elements using set intersection
        common_elements = set(nums1count.keys()) & set(nums2count.keys())
        
        # Initialize result list
        result = []
        
        # Iterate through common elements
        for num in common_elements:
            # Determine the minimum count of num in nums1 & nums2 using cached tally results
            min_count = min(nums1count[num], nums2count[num])
            
            # Add num to result min_count times
            result.extend([num] * min_count)
        
        return result