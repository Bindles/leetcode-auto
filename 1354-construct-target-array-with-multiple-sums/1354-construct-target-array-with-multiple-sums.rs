impl Solution {
    pub fn is_possible(target: Vec<i32>) -> bool {
        let mut target = target;
        let mut sum: i64 = target.iter().map(|&x| x as i64).sum();
        while *target.iter().max().unwrap() > 1 {
            let max_val = *target.iter().max().unwrap();
            let rest_sum = sum - max_val as i64;
            if rest_sum <= 0 || rest_sum >= max_val as i64 {
                return false;
            }
            let new_val = max_val % rest_sum as i32;
            sum = rest_sum + new_val as i64;
            if new_val == 0 && rest_sum > 1 {
                return false;
            }
            let index = target.iter().position(|&x| x == max_val).unwrap();
            target[index] = new_val;
        }
        true
    }
}
