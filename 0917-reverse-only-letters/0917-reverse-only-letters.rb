# @param {String} s
# @return {String}
def reverse_only_letters(s)
  letters = s.chars.select { |c| c =~ /[a-z]/i }
  s.chars.map { |c| c =~ /[a-z]/i ? letters.pop : c }.join
end