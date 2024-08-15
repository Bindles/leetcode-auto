# @param {String} s
# @param {Integer} k
# @return {Boolean}
def can_construct(s, k)
  return false if k > s.size
  s.chars.tally.values.count(&:odd?) <= k
end