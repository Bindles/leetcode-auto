impl Solution {
    pub fn is_palindrome(x: i32) -> bool {
        
        let xstr = x.to_string();   
        xstr == xstr.chars().rev().collect::<String>() 
    }
}