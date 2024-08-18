# @param {Integer} num
# @return {Integer[]}
def closest_divisors(num)
  (Math.sqrt(num + 2).to_i).downto(2) do |i|
    if (num + 1) % i == 0
      return [i, (num + 1) / i]
    elsif (num + 2) % i == 0
      return [i, (num + 2) / i]
    end
  end
  
  [1, num + 1]
end