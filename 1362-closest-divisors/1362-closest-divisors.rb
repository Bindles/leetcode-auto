# @param {Integer} num
# @return {Integer[]}
def closest_divisors(num)
  # Helper method to find the divisors closest to each other for a given target.
  def find_divisors(target)
    # Start from the square root of the target and move downwards.
    (Math.sqrt(target).to_i).downto(1) do |i|
      if target % i == 0
        return [i, target / i]
      end
    end
  end
  
  # Check both num + 1 and num + 2
  div1 = find_divisors(num + 1)
  div2 = find_divisors(num + 2)
  
  # Return the pair with the smallest absolute difference
  if (div1[0] - div1[1]).abs < (div2[0] - div2[1]).abs
    div1
  else
    div2
  end
end