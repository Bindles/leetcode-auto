impl Solution {
    pub fn ways_to_split_array(nums: Vec<i32>) -> i32 {
        let total_sum: i32 = nums.iter().sum();
        let mut left_sum = 0;

        (0..nums.len() - 1).fold(0, |res, i| {
            left_sum += nums[i];
            res + if left_sum >= total_sum - left_sum { 1 } else { 0 }
        })
    }
}