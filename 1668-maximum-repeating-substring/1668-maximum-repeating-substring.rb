# @param {String} sequence
# @param {String} word
# @return {Integer}
def max_repeating(sequence, word)
  k=0
  while sequence.include?(word * (k+1))
    k+=1
  end
  k
end