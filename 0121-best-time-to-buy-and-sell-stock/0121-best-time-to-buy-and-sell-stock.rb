# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  left = 0
  for right in 1...prices.size
    prices[left] > prices[right] ? left = right : max_profit = [max_profit, prices[right] - prices[left]].max  
  end
  max_profit
end