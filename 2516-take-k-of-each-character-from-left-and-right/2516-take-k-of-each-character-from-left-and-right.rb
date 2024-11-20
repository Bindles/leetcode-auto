def take_characters(s, k)
  # Create a hash with counts of each character ('a', 'b', 'c') minus k
  required_counts = {"a"=>0,"b"=>0,"c"=>0}
  required_counts = s.chars.tally(required_counts)
  required_counts.each { |chr, count| required_counts[chr] -=k }
  p required_counts

  # Return -1 if any character does not meet the required minimum count
  return -1 if required_counts.values.min < 0

  current_counts = Hash.new(0) # Tracks the count of characters in the current window
  max_window_size = 0
  left = 0

  s.each_char.with_index do |char, right|
    current_counts[char] += 1

    # Shrink the window if the current character count exceeds the required count
    while current_counts[char] > required_counts[char]
      current_counts[s[left]] -= 1
      left += 1
    end

    # Update the maximum window size
    max_window_size = [max_window_size, right - left + 1].max
  end

  s.length - max_window_size
end

