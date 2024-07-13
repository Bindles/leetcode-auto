# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_operations(nums, k)
  count = 0
  numcount = Hash.new(0)
  nums.each do |num|
    complement = k - num
    if numcount[complement] > 0
        count+=1
        numcount[complement]-=1
    else
        numcount[num] +=1
    end
  end
  count
end