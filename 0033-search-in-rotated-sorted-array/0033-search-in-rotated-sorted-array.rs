impl Solution {
  pub fn search(nums: Vec<i32>, target: i32) -> i32 {
      let f = |x: &i32| (*x < nums[0], *x);
      match nums.binary_search_by_key(&f(&target), f) {
          Ok(i) => i as i32,
          Err(_) => -1,
      }
  }
}