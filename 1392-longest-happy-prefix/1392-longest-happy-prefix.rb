# @param {String} s
# @return {String}
def longest_prefix(s)
  n = s.length
  lps = Array.new(n, 0) 

  length = 0  
  i = 1
  while i < n
    if s[i] == s[length]
      length += 1
      lps[i] = length
      i += 1
    else
      if length != 0
        length = lps[length - 1]
      else
        lps[i] = 0
        i += 1
      end
    end
  end

  s[0...lps[-1]]
end
