# @param {Integer[]} job_difficulty
# @param {Integer} d
# @return {Integer}
def min_difficulty(job_difficulty, d)
  n = job_difficulty.size
  return -1 if n < d

  # DP table initialization
  dp = Array.new(n + 1) { Array.new(d + 1, Float::INFINITY) }
  dp[0][0] = 0

  # Fill the DP table
  (1..n).each do |i|
    (1..d).each do |k|
      max_difficulty = 0
      (i).downto(1) do |j|
        max_difficulty = [max_difficulty, job_difficulty[j-1]].max
        dp[i][k] = [dp[i][k], dp[j-1][k-1] + max_difficulty].min
      end
    end
  end

  dp[n][d]
end