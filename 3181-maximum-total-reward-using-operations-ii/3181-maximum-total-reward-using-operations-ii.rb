# @param {Integer[]} reward_values
# @return {Integer}
def max_total_reward(reward_values)
  reward_values = reward_values.uniq.sort
  x = 1
  reward_values.each do |num|
    valid_x = x & ((1 << num) - 1)
    x |= valid_x << num
  end
  x.bit_length - 1
end
