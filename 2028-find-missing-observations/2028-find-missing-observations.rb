# @param {Integer[]} rolls
# @param {Integer} mean
# @param {Integer} n
# @return {Integer[]}
def missing_rolls(rolls, mean, n)
  sum_needed = mean * (n + rolls.size) - rolls.sum
  return [] if sum_needed < n || sum_needed > 6 * n

  base, extra = sum_needed.divmod(n)
  Array.new(extra, base + 1) + Array.new(n - extra, base)
end
