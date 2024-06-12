# @param {String} s
# @return {String[]}
def letter_case_permutation(s)
  p [''].product(*s.chars.map{|char| [char.downcase, char.upcase].uniq}).map(&:join)
end