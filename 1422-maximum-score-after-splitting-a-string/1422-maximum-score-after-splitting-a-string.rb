# @param {String} s
# @return {Integer}
def max_score(s)
  (1...s.size).map { |x| s[0...x].count("0") + s[x..].count("1") }.max
end

