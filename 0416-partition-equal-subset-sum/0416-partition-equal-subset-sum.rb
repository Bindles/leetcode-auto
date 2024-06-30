def can_partition(nums)
  return false if nums.sum.odd?
  dp = Array.new(nums.size + 1) { Array.new(nums.sum/2) }
  (nums.size + 1).times do |i|
    (nums.sum/2 + 1).times do |j|
      if j == 0
        dp[i][j] = true
      elsif i == 0
        dp[i][j] = false
      elsif nums[i-1] > j
        dp[i][j] = dp[i-1][j]
      else
        dp[i][j] = dp[i-1][j] || dp[i-1][j - nums[i-1]]
      end
    end
  end
  dp[nums.size][nums.sum/2]
end