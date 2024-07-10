# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  letters.bsearch {|num| num > target } || letters[0]
end

