/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var maximumSubarraySum = function(nums, k) {
  let freq = {}, maxSum = 0, sum = 0, left = 0;
  for(let right = 0; right < nums.length; right++){
      while(freq[nums[right]] && left <= right){
          sum -= nums[left];
          freq[nums[left]]--;
          left++;
      }
      freq[nums[right]] = (freq[nums[right]] || 0) + 1;
      sum += nums[right];
      if(right - left + 1 == k) {
          maxSum = Math.max(maxSum, sum);
          sum -= nums[left];
          freq[nums[left]]--;
          left++;
      }
  }
  return maxSum;    
};
