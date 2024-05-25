# @param {Integer[]} position
# @param {Integer} m
# @return {Integer}
def max_distance(position, m)
  position.sort!
  left, right = 1, position[-1] - position[0]

  while left < right
    mid = (left + right + 1) / 2
    if can_place_balls(position, m, mid)
      left = mid
    else
      right = mid - 1
    end
  end

  left
end

def can_place_balls(position, m, min_force)
  count = 1
  last_position = position[0]

  position.each do |pos|
    if pos - last_position >= min_force
      count += 1
      last_position = pos
    end
    return true if count >= m
  end

  false
end
