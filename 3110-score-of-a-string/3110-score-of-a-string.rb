# @param {String} s
# @return {Integer}
def score_of_string(s)
  s.bytes.each_cons(2).map { |a, b| (a - b).abs }.sum
end
