
# @param {String} s1
# @param {Integer} n1
# @param {String} s2
# @param {Integer} n2
# @return {Integer}
# @param {String} s1
# @param {Integer} n1
# @param {String} s2
# @param {Integer} n2
# @return {Integer}
def get_max_repetitions(s1, n1, s2, n2)
  return 0 if s1.empty? || s2.empty?

  s1_count = 0
  s2_count = 0
  i = 0
  j = 0

  # Maps to store the index and counts when we detect a loop
  index_dict = {}
  count_dict = {}

  while s1_count < n1
    s1_count += 1
    s1.each_char do |char|
      if char == s2[j]
        j += 1
        if j == s2.length
          s2_count += 1
          j = 0
        end
      end
    end

    if index_dict[j]
      # Found a loop
      prev_s1_count = index_dict[j]
      prev_s2_count = count_dict[j]

      # Calculate number of loops
      loop_length = s1_count - prev_s1_count
      loop_s2_count = s2_count - prev_s2_count

      # How many full loops can we skip?
      remaining_loops = (n1 - s1_count) / loop_length

      # Skip full loops
      s1_count += remaining_loops * loop_length
      s2_count += remaining_loops * loop_s2_count
    else
      index_dict[j] = s1_count
      count_dict[j] = s2_count
    end
  end

  s2_count / n2
end
