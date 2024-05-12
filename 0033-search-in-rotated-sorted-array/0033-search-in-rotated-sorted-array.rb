def search(nums, target)
  result = nums.sort.bsearch{ |n| target <=> n }
  result.nil? ? -1 : nums.index(result)
end