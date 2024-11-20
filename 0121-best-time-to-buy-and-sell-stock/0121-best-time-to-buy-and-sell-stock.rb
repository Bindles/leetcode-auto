# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.empty?
  minprice = prices[0]
  maxp = 0

  for price in prices do
    minprice = [minprice, price].min
    profit = price - minprice
    maxp = [maxp, profit].max
  end
  maxp
end