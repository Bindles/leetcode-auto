# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarrays_div_by_k(nums, k)
  csum=0
  [csum, *nums].map do |num|
    # Calculate cumulative sum and take modulo `k`
    (csum += num) % k
  end
  .tally # Count occurrences of each modulo result
  .sum do |_mod, count|
    # Calculate the number of subarrays that yield the same modulo result
    count * (count - 1) / 2
  end
end