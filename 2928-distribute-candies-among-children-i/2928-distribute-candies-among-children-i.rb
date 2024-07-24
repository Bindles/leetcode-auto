# @param {Integer} n
# @param {Integer} limit
# @return {Integer}
def distribute_candies(n, limit)
  (0..limit).sum do |i|
    min_candies = [0, n - i - limit].max
    max_candies = [limit, n - i].min
    [0, max_candies - min_candies + 1].max
  end
end

