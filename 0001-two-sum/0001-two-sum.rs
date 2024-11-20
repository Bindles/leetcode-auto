impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        for i in 0..=nums.len() { //i..nums.len() - 1|exclusive
            if nums[i] + nums[i + 1] == target {
                return vec![i as i32, (i+1) as i32]
            }
        }
        vec![-1,-1]
    }
}
