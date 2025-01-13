impl Solution {
    pub fn max_score(s: String) -> i32 {
        let mut max_score = 0;

        for x in 1..s.len() {
            let current_score = s[0..x].chars().fold(0, |acc, c| acc + if c == '0' { 1 } else { 0 }) + s[x..].chars().fold(0, |acc, c| acc + if c == '1' { 1 } else { 0 });
            max_score = max_score.max(current_score);
        }

        max_score as i32
    }
}
