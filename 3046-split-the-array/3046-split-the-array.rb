def is_possible_to_split(nums)
  nums.tally.all? {|k,v| v <=2} 
end