impl Solution {
    pub fn detect_capital_use(word: String) -> bool {
        let is_uppercase = word.chars().all(|c| c.is_uppercase());
        let is_lowercase = word.chars().all(|c| c.is_lowercase());
        let first_upper_rest_lower = word.chars().next().unwrap().is_uppercase()
            && word.chars().skip(1).all(|c| c.is_lowercase());
        
        is_uppercase || is_lowercase || first_upper_rest_lower
    }
}
