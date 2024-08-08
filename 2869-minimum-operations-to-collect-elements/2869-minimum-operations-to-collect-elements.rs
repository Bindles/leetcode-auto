use std::collections::HashSet;
impl Solution {
    pub fn min_operations(mut nums: Vec<i32>, k: i32) -> i32 {
        let mut count = 0;
        let mut rng: HashSet<i32> = (1..=k).collect();

        while !rng.is_empty() {
            if let Some(val) = nums.pop() {
                rng.remove(&val);
                count += 1;
            }
        }

        count
    }
}
