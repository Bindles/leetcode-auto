# @param {String} s
# @return {String}
def reverse_parentheses(s)
  stack = []
  s.each_char do |char|
    if char == ')'
      temp = []
      while stack.last != '('
        temp << stack.pop
      end
      stack.pop #remove the '('
      stack.push(*temp)
    else
      stack.push(char)
    end
  end
  stack.join
end
