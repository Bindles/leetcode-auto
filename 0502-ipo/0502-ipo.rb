# @param {Integer} k
# @param {Integer} w
# @param {Integer[]} profits
# @param {Integer[]} capital
# @return {Integer}
def find_maximized_capital(k, w, profits, capital)
  capital, profits = capital.zip(profits).sort, profits.uniq[1] ? Containers::MaxHeap.new : []
  k.times{capital=capital.drop_while{|a,b|w>=a and profits<<b} and w+=profits.pop.to_i } and w
end