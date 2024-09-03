# @param {Integer[]} chalk
# @param {Integer} k
# @return {Integer}
def chalk_replacer(chalk, k)
  k %= chalk.sum # Remaining chalk after k full rounds
  chalk.find_index{|c| (k -= c) < 0 }
end
