# @param {Integer[]} target
# @return {Boolean}
def is_possible(target)
  # Convert target elements to integers
  target.map!(&:to_i)

  # Calculate the total sum of the target array
  sum = target.sum

  # Use a max-heap to always work with the largest element
  max_heap = target.sort.reverse
  heap = []
  max_heap.each { |num| heap.push(-num) } # Negative because Ruby's heap is a min-heap

  while heap.first < -1
    max = -heap.shift # Pop the largest element (note: negating back to positive)
    rest_sum = sum - max

    # Check if the rest_sum can be used to form the target
    return false if rest_sum <= 0 || rest_sum >= max

    # Calculate the new value to replace the largest element
    new_val = max % rest_sum

    # Update the sum and heap
    sum = rest_sum + new_val
    return false if new_val == 0 && rest_sum > 1

    # Push the new value into the heap
    heap.push(-new_val)
    heap.sort!
  end

  true
end
