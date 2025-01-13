# @param {String} s
# @return {Integer}
def max_score(s)
    max_score=0
    (1...s.size).count do |x|
      max_score = [(s.chars[0...x].count("0") + s.chars[x...].count("1") ), max_score].max
    end
    max_score
end