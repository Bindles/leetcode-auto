impl Solution {
    pub fn remove_trailing_zeros(num: String) -> String {
        let num_reversed: String = num.chars().rev().collect();
        let parsed_int: u128 = num_reversed.parse().unwrap();
        let result = parsed_int.to_string();
        result.chars().rev().collect()
    }
}
