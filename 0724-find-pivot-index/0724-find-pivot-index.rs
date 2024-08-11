impl Solution {
    pub fn pivot_index(nums: Vec<i32>) -> i32 {
        let total: i32 = nums.iter().sum();
        let mut left_total = 0;
        for i in 0..nums.len() {
            let right_total = total - left_total - nums[i];
            if right_total == left_total {
                return i as i32;
            }
            left_total += nums[i]
        }
        -1          
    }
}

