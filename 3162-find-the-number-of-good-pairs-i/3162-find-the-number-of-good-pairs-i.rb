# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
def number_of_pairs(nums1, nums2, k)
    nums1.sum do |i|
        nums2.count do |j|
            i % (j * k) == 0
        end
    end
end