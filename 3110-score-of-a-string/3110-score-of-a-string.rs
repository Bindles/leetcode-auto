impl Solution {
    pub fn score_of_string(s: String) -> i32 {
        let mut count : i32 = 0;
        s.as_bytes()
        .windows(2)
        .map(|pair| (pair[0] as i32 - pair[1] as i32).abs() )
        .sum()
    }
}