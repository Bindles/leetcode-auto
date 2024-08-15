# @param {String} s
# @param {Integer} k
# @return {Boolean}
def can_construct(s, k)
  return false if k > s.length
  freq = s.chars.tally
  odd_count = freq.values.count(&:odd?)
  odd_count <= k
end