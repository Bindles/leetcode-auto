# @param {String} s
# @return {Integer}
def min_length(s)
  stack = []
  s.each_char do |chr|
    if chr == "B" && stack.last == "A"
      stack.pop
    elsif chr == "D" && stack.last == "C"
      stack.pop
    else
      stack.push(chr)
    end
  end
  stack.size
end

