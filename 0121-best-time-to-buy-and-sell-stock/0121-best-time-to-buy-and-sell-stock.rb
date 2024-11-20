# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  left = 0
  for right in 1...(prices.size)
    if prices[left] > prices[right]
      left = right
    else
      max_profit = [max_profit, prices[right] - prices[left]].max
    end
  end
  max_profit
end