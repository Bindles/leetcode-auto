# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
    nums1tally = nums1.tally
    nums2tally = nums2.tally
    result=[]
    (nums1 & nums2).each do |num|
        [nums1tally[num], nums2tally[num]].min.times {result << num}
    end
    result
end