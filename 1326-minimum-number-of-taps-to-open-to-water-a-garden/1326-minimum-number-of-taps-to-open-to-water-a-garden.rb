# @param {Integer} n
# @param {Integer[]} ranges
# @return {Integer}
def min_taps(n, ranges)
  inf = 10**9
  dp = Array.new(n+1,inf)
  dp[0] = 0
  (n+1).times do |i|
    tap_start = [0, i - ranges[i]].max
    tap_end = [n, i + ranges[i]].min
    (tap_start..tap_end).each do |j|
      dp[tap_end] = [dp[tap_end], dp[j] + 1].min
    end
  end
  return -1 if inf == dp[n]
  return dp[n]
end