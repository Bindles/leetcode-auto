impl Solution {
    pub fn max_score(s: String) -> i32 {
        let mut max_score = 0;

        for x in 1..s.len() {
            // Calculate the score for the current split
            let left_score = s[0..x].chars().filter(|&c| c == '0').count();
            let right_score = s[x..].chars().filter(|&c| c == '1').count();
            let current_score = left_score + right_score;

            // Update the max score
            max_score = max_score.max(current_score);
        }

        max_score as i32
    }
}
