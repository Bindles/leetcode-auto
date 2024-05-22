impl Solution {
    pub fn maximum_strong_pair_xor(nums: Vec<i32>) -> i32 {
        let mut max_xor = 0;
        let n = nums.len();
        
        for i in 0..n {
            for j in i..n {
                let x = nums[i];
                let y = nums[j];
                if (x - y).abs() <= x.min(y) {
                    max_xor = max_xor.max(x ^ y);
                }
            }
        }
 
        max_xor
    }
}