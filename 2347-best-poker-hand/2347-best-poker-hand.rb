# @param {Integer[]} ranks
# @param {Character[]} suits
# @return {String}
def best_hand(ranks, suits)
  rank_count = Array.new(14, 0) # Array to store the count of each rank

  # Check for "Flush"
  (1...suits.size).each do |i|
    if suits[i - 1] != suits[i]
      break
    elsif i == suits.size - 1
      return "Flush"
    end
  end

  # Count occurrences of each rank
  ranks.each do |rank|
    rank_count[rank] += 1
  end

  res = rank_count.max

  if res >= 3
    "Three of a Kind"
  elsif res == 2
    "Pair"
  else
    "High Card"
  end
end