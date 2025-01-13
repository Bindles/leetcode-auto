impl Solution {
    pub fn ways_to_split_array(nums: Vec<i32>) -> i32 {
        let total_sum: i32 = nums.iter().sum();
        let mut left_sum: i32 = 0;
        let mut res = 0;

        for i in 0..nums.len() - 1 {
            left_sum += nums[i] as i32;
            let right_sum = total_sum - left_sum;

            if left_sum >= right_sum {
                res += 1;
            }
        }
        res
    }
}