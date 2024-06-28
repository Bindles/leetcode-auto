# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  n = cost.size
  dp = Array.new(n + 1, 0)

  (2..n).each do |i|
    dp[i] = [dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2]].min
  end
  dp[n]
end