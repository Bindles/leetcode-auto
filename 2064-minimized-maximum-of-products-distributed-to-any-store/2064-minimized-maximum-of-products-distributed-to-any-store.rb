# @param {Integer} n
# @param {Integer[]} quantities
# @return {Integer}
def minimized_maximum(n, quantities)
  low = 0                # Lower bound: minimum possible maximum group size
  high = quantities.max  # Upper bound: highest quantity in the array

  # Perform binary search to find the minimum possible maximum group size
  while (high - low).abs > 1
    mid = (high + low) / 2  # Middle value in current range

    # Check if we can distribute items into `n` or fewer groups with a max size of `mid`
    total_groups = quantities.sum { |q| (q + mid - 1) / mid }

    if total_groups <= n
      # If `mid` is a feasible maximum group size, try for a smaller max size
      high = mid
    else
      # If `mid` is too small, we need to allow a larger max size
      low = mid
    end
  end

  # `high` is the smallest possible maximum group size that allows `n` or fewer groups
  high
end