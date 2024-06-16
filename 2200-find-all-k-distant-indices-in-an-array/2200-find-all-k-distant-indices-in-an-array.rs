impl Solution {
    pub fn find_k_distant_indices(nums: Vec<i32>, key: i32, k: i32) -> Vec<i32> {
        let n = nums.len();
        let mut result = vec![];

        let mut key_indices = vec![];
        for (i, &num) in nums.iter().enumerate() {
            if num == key {
                key_indices.push(i);
            }
        }

        for &key_index in &key_indices {
            let start_index = if key_index as i32 - k >= 0 { key_index as i32 - k } else { 0 } as usize;
            let end_index = if key_index as i32 + k < n as i32 { key_index as i32 + k } else { (n - 1) as i32 } as usize;
            for i in start_index..=end_index {
                if !result.contains(&(i as i32)) {
                    result.push(i as i32);
                }
            }
        }

        result.sort();
        result
    }
}