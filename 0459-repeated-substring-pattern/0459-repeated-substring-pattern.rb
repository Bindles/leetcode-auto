# @param {String} s
# @return {Boolean}
BASIC_PRIMES = [2, 3, 5]
def repeated_substring_pattern(s)
  size = s.size
  divisor = nil
  
  BASIC_PRIMES.each do |prime|
    if size % prime == 0
      divisor = prime
      break
    end
  end

  divisor ||= 7

  firstchar = s[0]
  i = 1

  while i <= size / divisor
    si = s[i]
    if size % i == 0 && si == firstchar
      return true if s[0, i] * (size / i) == s
    end

    i += 1
  end

  false
end