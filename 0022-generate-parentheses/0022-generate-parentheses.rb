# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  result = []
  
  # Recursive helper fn to build the parentheses combinations
  def backtrack(result, current, open, close, max)
    # If the current string is complete (i.e., 2n characters), add it to the result
    result << current if current.length == max * 2
    
    # Add an open parenthesis if we still have open ones available
    backtrack(result, current + '(', open + 1, close, max) if open < max
    
    # Add a close parenthesis if it won't lead to an invalid sequence
    backtrack(result, current + ')', open, close + 1, max) if close < open
  end
  
  # Start backtracking with empty string and no parentheses used yet
  backtrack(result, '', 0, 0, n)
  
  result
end
