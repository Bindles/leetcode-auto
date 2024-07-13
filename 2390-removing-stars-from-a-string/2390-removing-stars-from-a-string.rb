# @param {String} s
# @return {String}
def remove_stars(s)
  stack=[]
  s.each_char do |c|
    c == '*' ? stack.pop : stack << c
  end
  stack.join
end