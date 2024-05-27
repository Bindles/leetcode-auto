# @param {Integer[]} nums
# @return {Integer}
def count_distinct_integers(nums)
  rev_arr = nums.map(&:to_s).map(&:reverse).map(&:to_i)
  nums.push(*rev_arr).uniq.size
end