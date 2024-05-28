# @param {String} s
# @return {Integer}
def my_atoi(s)
  s.to_i.clamp(-2147483648, 2147483647)
end