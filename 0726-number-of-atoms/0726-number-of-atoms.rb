# @param {String} formula
# @return {String}
def count_of_atoms(formula)
  tokens = formula.scan(/(\W|[A-Z][a-z]*)(\d*)/)
  
  stack = tokens.reduce([Hash.new(0)]) do |stack, (element, count)|
    if element == '('
      stack << Hash.new(0)
    elsif element == ')'
      last_counts = stack.pop
      multiplier = count.to_i > 0 ? count.to_i : 1

      last_counts.each do |key, value|
        stack.last[key] += value * multiplier
      end
      
    else
      count = count.to_i > 0 ? count.to_i : 1
      stack.last[element] += count
    end

    stack
  end

  final_counts = stack.pop.sort
  final_counts.map { |element, count| count > 1 ? "#{element}#{count}" : element }.join
end
