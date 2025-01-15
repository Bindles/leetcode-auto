def score_of_string(s)
  count=0 
  (0...s.size-1).each do |i|
    count += (s.bytes[i] - s.bytes[i+1]).abs
  end
  count
end