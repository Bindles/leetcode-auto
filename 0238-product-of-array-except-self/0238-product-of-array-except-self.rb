# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  n = nums.size
  res = [1] * n
  left = right = 1
  1.upto(n-1) do |i|
      res[i] *= left *= nums[i-1]
      res[~i] *= right *= nums[-i]
  end
  res
end