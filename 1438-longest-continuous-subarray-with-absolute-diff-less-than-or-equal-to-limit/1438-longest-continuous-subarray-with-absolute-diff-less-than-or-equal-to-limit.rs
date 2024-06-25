impl Solution {
    pub fn longest_subarray(nums: Vec<i32>, limit: i32) -> i32 {
        let mut longest = 0;
        let mut left = 0;
        let mut right = 0;
        let n = nums.len();

        while right < n {
            let window = &nums[left..=right];
            let max_val = *window.iter().max().unwrap();
            let min_val = *window.iter().min().unwrap();
            let diff = (max_val - min_val).abs();

            if diff <= limit {
                longest = std::cmp::max(longest, (right - left + 1) as i32);
                right += 1;
            } else {
                left += 1;
            }
        }

        longest
    }
}
