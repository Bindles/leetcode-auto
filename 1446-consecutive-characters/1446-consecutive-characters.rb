# @param {String} s
# @return {Integer}
def max_power(s)
    s.chars.chunk_while { |a, b| a == b }.to_a.map(&:size).max
end