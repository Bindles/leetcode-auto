impl Solution {
    pub fn get_final_state(mut nums: Vec<i32>, k: i32, multiplier: i32) -> Vec<i32> {
        for _ in 0..k {
            let mut min_value = nums[0];
            let mut min_index = 0;

            for (index, &value) in nums.iter().enumerate() {
                if value < min_value {
                    min_value = value;
                    min_index = index;
                }
            }

            nums[min_index] *= multiplier;
        }
        nums
    }
}