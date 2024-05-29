def interval_intersection(a, b)
  a_index = b_index = 0
  a_count = a.count
  b_count = b.count
  result = []
  
  while a_index < a_count && b_index < b_count
    interval_a = a[a_index]
    interval_b = b[b_index]
    
    head = [interval_a[0], interval_b[0]].max
    tail = [interval_a[1], interval_b[1]].min
    
    result << [head, tail] if tail >= head
    
    if interval_a[1] >= interval_b[1]
      b_index += 1
    else
      a_index += 1
    end
  end
  
  result
end