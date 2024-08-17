# @param {Character[][]} seats
# @return {Integer}
def max_students(seats)
  m, n = seats.size, seats[0].size
  
  # Generate valid bitmasks for all rows based on seat configuration
  valid_masks = Array.new(m, [])
  (0...m).each do |i|
    valid_masks[i] = (0...(1 << n)).select do |mask|
      (0...n).all? { |j| (mask & (1 << j) == 0) || seats[i][j] == '.' } && (mask & (mask >> 1) == 0)
    end
  end

  # DP array to store maximum students for each row and bitmask
  dp = Array.new(m) { Hash.new(-1) }
  
  # Initialize the DP for the first row
  valid_masks[0].each { |mask| dp[0][mask] = mask.to_s(2).count('1') }

  # Fill the DP array for each row
  (1...m).each do |i|
    valid_masks[i].each do |cur_mask|
      valid_masks[i - 1].each do |prev_mask|
        if (cur_mask & (prev_mask >> 1) == 0) && (cur_mask & (prev_mask << 1) == 0)
          dp[i][cur_mask] = [dp[i][cur_mask], dp[i - 1][prev_mask] + cur_mask.to_s(2).count('1')].max
        end
      end
    end
  end

  # The answer is the maximum value in the last row of dp
  dp[m - 1].values.max
end

