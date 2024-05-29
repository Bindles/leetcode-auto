# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
def number_of_pairs(nums1, nums2, k)
    nums1.product(nums2).count {|a, b| a % (b * k) == 0 }  
end