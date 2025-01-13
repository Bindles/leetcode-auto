impl Solution {
    pub fn ways_to_split_array(nums: Vec<i32>) -> i32 {
        let total_sum: i64 = nums.iter().map(|&x| x as i64).sum();
        let mut left_sum: i64 = 0;
        let mut res = 0;

        for i in 0..nums.len() - 1 {
            left_sum += nums[i] as i64;
            let right_sum = total_sum - left_sum;

            if left_sum >= right_sum {
                res += 1;
            }
        }
        res
    }
}