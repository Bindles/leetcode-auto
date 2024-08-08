impl Solution {
    pub fn min_operations(mut nums: Vec<i32>, k: i32) -> i32 {
        let mut count = 0;
        let mut res = Vec::new();
        let range: Vec<i32> = (1..=k).collect();

        while !range.iter().all(|&x| res.contains(&x)) {
            if let Some(val) = nums.pop() {
                res.push(val);
                count += 1;
            }
        }

        count
    }
}