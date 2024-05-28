# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
    (1..nums.size).map do |num|
      nums.combination(num).to_a.sum { |x|x.reduce(:^) }
    end.sum
end