# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  # Check if all letters are uppercase
  return true if word == word.upcase
  
  # Check if all letters are lowercase
  return true if word == word.downcase
  
  # Check if only the first letter is uppercase
  return true if word[0] == word[0].upcase && word[1..] == word[1..].downcase
  
  # If none of the conditions match, return false
  false
end