# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack=[]
  tokens.each do |token|
    case 
    when token == '+'
      stack << (stack.pop + stack.pop)
      
    when token == '-'
      a,b = stack.pop, stack.pop
      stack << (b - a)

    when token == '*'
      stack << (stack.pop * stack.pop)

    when token == '/'
      a,b = stack.pop, stack.pop
      stack << (b.to_f / a).to_i
      
    else
      stack << token.to_i
    end
  end
  stack.last 
end
