impl Solution {
  pub fn min_flips(target: String) -> i32 {
      let mut current_state = '0';
      let mut count = 0;

      for char in target.chars() {
          if char != current_state {
              count += 1;
              current_state = char;
          }
      }
      count
  }
}