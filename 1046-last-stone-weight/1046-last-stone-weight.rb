# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  stones.sort_by! { |stone| -stone }
  
  while stones.size > 1
    # Remove the two largest stones
    first = stones.shift
    second = stones.shift
    
    # Smash the two stones
    if first != second
      stones.unshift(first - second)
      stones.sort_by! { |stone| -stone }
    end
  end

  stones.empty? ? 0 : stones[0]
end