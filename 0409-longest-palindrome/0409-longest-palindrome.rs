use std::collections::HashMap;
impl Solution {
    pub fn longest_palindrome(s: String) -> i32 {
        let mut sc = HashMap::new();
        let mut result = 0;

        for chr in s.chars() {
            *sc.entry(chr).or_insert(0) +=1
        }

        for &val in sc.values() {
            result += (val / 2) * 2;
            if result%2==0 && val%2==1 {
                result+=1;
            }
        }
        return result;
    }
}