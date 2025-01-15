# @param {String} s
# @return {Integer}
def score_of_string(s)
  (0...s.size - 1).reduce(0) do |count, i|
    count + (s.bytes[i] - s.bytes[i + 1]).abs
  end
end
