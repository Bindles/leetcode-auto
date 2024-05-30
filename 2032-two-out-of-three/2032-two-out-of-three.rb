# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
  a = nums1 & nums2
  b = nums2 & nums3
  c = nums1 & nums3
  return a | b | c
end