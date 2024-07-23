# @param {Integer} n
# @param {Integer} limit
# @return {Integer}
def distribute_candies(n, limit)
  res=0    
  (0..limit).each do |i|
    min_candies = [0, n - i - limit].max
    max_candies = [limit, n - i].min
    res += (min_candies..max_candies).size
  end
  res
end