# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  i = res = 0
  while i < chars.size
    letter = chars[i]
    count = 0

    while i < chars.size and chars[i] == letter
      count += 1
      i += 1
    end
    chars[res] = letter
    res += 1
        
    if count > 1
      #for digit in str(count):
      count.to_s.each_char do |digit|
        chars[res] = digit
        res += 1
      end
    end
  end
  return res
end