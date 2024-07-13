impl Solution {
    pub fn remove_stars(s: String) -> String {
        let mut res = String::new();
        let mut number_of_stars = 0;

        for c in s.chars().rev() {
            if c == '*' {
                number_of_stars += 1;
            } else if number_of_stars > 0 {
                number_of_stars -= 1;
            } else {
                res.push(c);
            }
        }

        res.chars().rev().collect()
    }
}