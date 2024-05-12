impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      let mut nums_with_indices: Vec<(i32, usize)> = nums.iter().enumerate().map(|(i, &val)| (val, i)).collect();
      nums_with_indices.sort_unstable_by_key(|&(val, _)| val);

      let result = nums_with_indices.binary_search_by_key(&target, |&(val, _)| val);

      match result {
          Ok(index) => nums_with_indices[index].1 as i32,
          Err(_) => -1,
      }
  }
}