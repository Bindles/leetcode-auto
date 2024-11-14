# @param {Integer} n
# @param {Integer[]} quantities
# @return {Integer}
def minimized_maximum(n, quantities)
  high = quantities.max  # Upper bound: highest quantity in the array
  low = 0                # Lower bound: minimum possible maximum group size

  while (high - low) > 1  #remove .abs
    mid = (high + low) / 2

    # Manually calculate total_groups
    total_groups = 0
    quantities.each do |q|
      total_groups += (q + mid - 1) / mid  # Equivalent to rounding up q / mid
    end

    if total_groups <= n
      high = mid  # mid is a feasible maximum group size, try for a smaller max size
    else
      low = mid   # mid is too small, we need a larger max size
    end
  end

  high  # Return the minimized maximum value
end
