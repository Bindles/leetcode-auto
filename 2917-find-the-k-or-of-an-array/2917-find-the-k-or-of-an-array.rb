# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_k_or(nums, k)
    (0...32).sum do |i|
      (nums.map { |x| (x >> i) & 1 }.sum >= k ? 1 : 0) << i
    end
end