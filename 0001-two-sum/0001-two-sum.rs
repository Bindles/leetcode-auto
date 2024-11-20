impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let n = nums.len();
        for i in 1..n {
            for j in i..n {
                if nums[j] + nums[j - i] == target {
                    return vec![(j-i) as i32, j as i32]
                }
            }
        }
        vec![-1,-1]
    }
}
