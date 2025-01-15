impl Solution {
    pub fn minimize_xor(num1: i32, num2: i32) -> i32 {
        let target_bit_count = num2.count_ones();
        let mut result = num1;
        let mut bit_count = num1.count_ones();
        if bit_count < target_bit_count {
            for _ in 0..(target_bit_count - bit_count) {
                result |= result + 1;
            }
        } else if bit_count > target_bit_count {
            for _ in 0..(bit_count - target_bit_count) {
                result &= result - 1;
            }
        }
        
        result
    }
}