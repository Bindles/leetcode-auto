# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
def number_of_pairs(nums1, nums2, k)
count=0
    nums1.each do |i|
        nums2.each do |j|
            count+=1 if i % (j *k) == 0
        end
    end
    count
end