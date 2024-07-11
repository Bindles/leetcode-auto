# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  # Initialize pointers for nums1 and nums2
  i = m-1  # Pointer for the last element in the initial part of nums1
  j = n-1  # Pointer for the last element in nums2
  last = m + n - 1  # Pointer for the last position in nums1Z
  # Iterate while there are elements in nums2 to be merged
  while j >= 0 do 
    # If current element in nums1 is greater than current element in nums2
    if i >= 0 && nums1[i] > nums2[j]
      nums1[last] = nums1[i]  # Place nums1 element in the correct position
      i -= 1  # Move nums1 pointer to the left
    else
      nums1[last] = nums2[j]  # Place nums2 element in the correct position
      j -= 1  # Move nums2 pointer to the left
    end
    last -= 1  # Move the last pointer to the left
  end
end
