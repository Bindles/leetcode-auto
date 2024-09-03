# @param {Integer[]} chalk
# @param {Integer} k
# @return {Integer}
def chalk_replacer(chalk, k)
  k %= chalk.sum # Remaining chalk after k full rounds

  chalk.each_index do |i|
    return i if k < chalk[i]
    k-=chalk[i]
  end
end
