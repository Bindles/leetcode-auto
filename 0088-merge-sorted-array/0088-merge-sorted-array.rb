# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  # remove extraneous trailing zeros   
  while m < nums1.size && nums1.last.zero?
    nums1.pop
  end

  # insert based on order
  i = 0
  while i < nums1.length && !nums2.empty?
    if nums1[i] >= nums2[0]
      nums1.insert(i, nums2[0])
      nums2.shift
    end
    i += 1
  end

  # append any remainder
  until nums2.empty?
    nums1.push(nums2.shift)
  end
end
