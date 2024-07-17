# @param {String} formula
# @return {String}
def count_of_atoms(formula)
  # Scan for elements and their counts
  tokens = formula.scan(/(\W|[A-Z][a-z]*)(\d*)/)
  
  # Reduce the tokens to count elements
  stack = tokens.reduce([Hash.new(0)]) do |stack, (element, count)|
    if element == '('
      # If the element is '(', push a new hash onto the stack
      stack << Hash.new(0)
    elsif element == ')'
      # If the element is ')', pop the last hash and update counts in the previous hash
      last_counts = stack.pop
      multiplier = count.to_i > 0 ? count.to_i : 1

      last_counts.each do |key, value|
        stack.last[key] += value * multiplier
      end
      
    else
      # For regular elements, update the counts
      count = count.to_i > 0 ? count.to_i : 1
      stack.last[element] += count
    end

    stack
  end

  # Get the final counts, sort, and format the output
  final_counts = stack.pop.sort
  final_counts.map { |element, count| count > 1 ? "#{element}#{count}" : element }.join
end
