# @param {Integer[]} nums
# @return {Integer[]}
def rearrange_array(nums)
  positives, negatives = nums.partition(&:positive?)
  positives.zip(negatives).flatten
end