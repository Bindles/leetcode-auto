# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
def max_score(nums1, nums2, k)
  n = nums1.size
  
  # Combine both arrays and sort by nums2 in descending order
  pairs = nums1.zip(nums2).sort_by { |_, b| -b }
  
  # Min-heap to track the largest 'k' nums1 values
  min_heap = []
  sum_of_k = 0
  max_score = 0
  
  pairs.each_with_index do |(n1, n2), i|
    # Add the current nums1 value to the heap and update the sum
    min_heap << n1
    sum_of_k += n1
    
    # Sort to simulate heap behavior (min-heap, keeping smallest element at the front)
    min_heap.sort!
    
    # If heap size exceeds k, remove the smallest element
    if min_heap.size > k
      sum_of_k -= min_heap.shift # remove the smallest element
    end
    
    # If the heap has exactly k elements, compute the score
    if min_heap.size == k
      max_score = [max_score, sum_of_k * n2].max
    end
  end
  
  max_score
end