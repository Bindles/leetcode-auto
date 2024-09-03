# @param {Integer[]} chalk
# @param {Integer} k
# @return {Integer}
def chalk_replacer(chalk, k)
  
  # Find the remaining chalk after k full rounds
  k %= chalk.sum

  p k
  
  chalk.each_index do |c,i|
    return i if k < chalk[i]
    k-=chalk[i]
  end
end
