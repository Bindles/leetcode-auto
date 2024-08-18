# @param {String} s
# @return {String}
def reformat(s)
  chars, digits = s.chars.partition { |c| c =~ /[a-zA-Z]/ }
  
  # Check if it's possible to interleave the characters
  return '' if (chars.size - digits.size).abs > 1
  
  # If digits are more, swap chars and digits
  chars, digits = digits, chars if digits.size > chars.size
  
  # Interleave characters and digits
  result = []
  while !chars.empty? && !digits.empty?
    result << chars.shift
    result << digits.shift
  end

  # Append remaining character if one list is longer
  result << chars.shift unless chars.empty?
  result << digits.shift unless digits.empty?

  result.join
end
