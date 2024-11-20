# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  result = 0
  lowest = prices[0]
  prices.each do |price|
    lowest = [lowest, price].min
    result = [result, price - lowest].max
  end
  result
end