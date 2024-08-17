# @param {Integer} k
# @return {Integer}
def find_min_fibonacci_numbers(k)
  # Generate Fibonacci numbers up to k
  fibs = [1, 1]
  while fibs[-1] <= k
    fibs << fibs[-1] + fibs[-2]
  end
  
  count = 0
  i = fibs.length - 1
  
  # Use the largest possible Fibonacci number and subtract it from k
  while k > 0
    if fibs[i] <= k
      k -= fibs[i]
      count += 1
    end
    i -= 1
  end
  
  count
end

