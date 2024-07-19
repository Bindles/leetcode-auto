# @param {Integer[]} nums
# @return {Integer}
def count_beautiful_pairs(nums)
  nums.each_index.sum do |i|
    (i+1...nums.size).count do |j|
      nums[i].to_s[0].to_i.gcd(nums[j] % 10) == 1
    end
  end
end