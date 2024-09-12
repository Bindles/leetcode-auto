# @param {String} s
# @param {Integer} k
# @return {Integer}
def count_k_constraint_substrings(s, k)
  total = 0
  left = 0
  count_zeros = 0
  count_ones = 0
  
  s.each_char.with_index do |char, right|
    count_zeros += 1 if char == '0'
    count_ones += 1 if char == '1'
    
    # Shrink window if both counts exceed k
    while count_zeros > k && count_ones > k
      count_zeros -= 1 if s[left] == '0'
      count_ones -= 1 if s[left] == '1'
      left += 1
    end
    
    # Every substring from `left` to `right` is valid
    total += right - left + 1
  end
  
  total
end



