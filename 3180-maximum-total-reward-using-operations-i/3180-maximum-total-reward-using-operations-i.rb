# @param {Integer[]} reward_values
# @return {Integer}
def max_total_reward(reward_values)
  reward_values.sort!
  maximum = reward_values[-1]
  dp = Array.new(maximum * 2, 0)

  reward_values.each do |rew|
    (0...rew).each do |i|
      if dp[i + rew] < dp[i] + rew
        dp[i + rew] = dp[i] + rew
      end
    end
  end

  dp.max
end