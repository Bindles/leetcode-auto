# @param {Integer[]} target
# @return {Boolean}
def is_possible(target)
  target = target.map(&:to_i) # Ensure all elements are integers
  sum = target.sum

  # Continue until the largest element is 1 or less
  while target.max > 1
    max = target.max
    rest_sum = sum - max

    # If the rest of the sum is less than or equal to 0 or not less than the maximum value, it's not possible
    return false if rest_sum <= 0 || rest_sum >= max

    # Calculate the new value to be used to replace the maximum
    new_val = max % rest_sum

    # Update the sum and target array
    sum = rest_sum + new_val
    return false if new_val == 0 && rest_sum > 1

    # Replace the maximum value in the target array with the new value
    target[target.index(max)] = new_val
  end

  true
end
