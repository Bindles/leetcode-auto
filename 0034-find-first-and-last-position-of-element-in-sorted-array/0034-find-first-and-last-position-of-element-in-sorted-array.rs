impl Solution {
    pub fn search_range(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut res = vec![];
        for (i, &n) in nums.iter().enumerate() {
            if n == target {
                res.push(i as i32);
            }
        }
        if res.is_empty() {
            vec![-1, -1]
        } else {
            vec![res[0], *res.last().unwrap()]
        }
    }
}