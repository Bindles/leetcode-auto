use std::collections::HashSet;
impl Solution {
    pub fn find_k_distant_indices(nums: Vec<i32>, key: i32, k: i32) -> Vec<i32> {
        let n = nums.len();
        let mut result_set = HashSet::new();

        for (i, &num) in nums.iter().enumerate() {
            if num == key {
                let start_index = if i as i32 - k >= 0 { i as i32 - k } else { 0 } as usize;
                let end_index = if i as i32 + k < n as i32 { i as i32 + k } else { (n - 1) as i32 } as usize;
                for j in start_index..=end_index {
                    result_set.insert(j as i32);
                }
            }
        }

        let mut result: Vec<i32> = result_set.into_iter().collect();
        result.sort();
        result
    }
}