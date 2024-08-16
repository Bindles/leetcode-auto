impl Solution {
    pub fn reformat_number(number: String) -> String {
        let cleaned_nums: String = number.chars().filter(|c| c.is_digit(10)).collect();
        
        let mut result = String::new();
        let mut i = 0;
        let mut n = cleaned_nums.len();
        
        while n > 4 {
            result.push_str(&cleaned_nums[i..i+3]);
            result.push('-');
            i += 3;
            n -= 3;
        }
        
        if n == 4 {
            result.push_str(&cleaned_nums[i..i+2]);
            result.push('-');
            result.push_str(&cleaned_nums[i+2..]);
        } else {
            result.push_str(&cleaned_nums[i..]);
        }
        
        result
    }
}