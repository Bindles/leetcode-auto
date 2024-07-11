# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  i=m-1
  j=n-1
  last = m+n-1
  while  j >= 0 do 
    if i>=0 && nums1[i] > nums2[j]
        nums1[last] = nums1[i]
        i =  i-1
    else
        nums1[last] = nums2[j]
        j = j-1
    end
    last = last -1
  end
end
