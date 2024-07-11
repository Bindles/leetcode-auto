# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return strs[0] if strs.size < 2
  res = []
  # Get the minimum size among all strings
  sizex = strs.map(&:size).min

  # Iterate over each character index up to the minimum size
  (0...sizex).each do |i|
    # Iterate over each string and compare with the next one
    (0...strs.size - 1).each do |index|
      # Check if the current character matches in adjacent strings
      if strs[index][i] == strs[index + 1][i]
        res << strs[index][i] if index == strs.size - 2 # Add character if it's the last pair comparison
      else
        return res.join # If any character doesn't match, return the result
      end
    end
  end
  res.join # Return the joined result as the longest common prefix
end