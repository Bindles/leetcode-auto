impl Solution {
    pub fn get_final_state(mut nums: Vec<i32>, k: i32, multiplier: i32) -> Vec<i32> {
        for _ in 0..k {
            // Find the smallest value and its index
            if let Some((min_index, _)) = nums.iter().enumerate().min_by_key(|&(_, &val)| val) {
                // Multiply the smallest value by the multiplier
                nums[min_index] *= multiplier;
            }
        }
        nums
    }
}