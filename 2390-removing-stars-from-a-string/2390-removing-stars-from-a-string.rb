
# @param {String} s
# @return {String}
def remove_stars(s)
  a, b = s.split("*", 2)  # Splitting 's' into two parts at the first '*'
  return a if b.nil?      # If there is no second part (no '*'), return 'a' as is
  a.chop!                 # Remove the last character of 'a' (to remove the trailing '*')
  
  # Iterate through 'b' and append characters to 'a', skipping any '*'
  b.each_char do |char|
    if char == "*"
      a.chop!              # Remove the last character of 'a' if it's '*'
    else
      a << char            # Append 'char' to 'a' if it's not '*'
    end
  end
  a                       # Return the modified 'a'
end
