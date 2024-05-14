impl Solution {
  pub fn judge_circle(moves: String) -> bool {
      moves.chars().filter(|&c| c == 'U').count() == moves.chars().filter(|&c| c == 'D').count() &&
      moves.chars().filter(|&c| c == 'L').count() == moves.chars().filter(|&c| c == 'R').count()
  }
}