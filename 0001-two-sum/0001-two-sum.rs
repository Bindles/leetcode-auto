use std::collections::HashMap;
impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut map = HashMap::new();
        for (i, &num) in nums.iter().enumerate() { //python for i,num in enumerate(nums)
            let complement = target - num;

            if map.contains_key(&complement) {
                return vec![map[&complement] as i32, i as i32];
            }

            map.insert(num,i);
        }
        vec![-1,-1]
    }
}
