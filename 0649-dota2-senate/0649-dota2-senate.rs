impl Solution {
    pub fn predict_party_victory(senate: String) -> String {
        let mut r_queue = std::collections::VecDeque::new();
        let mut d_queue = std::collections::VecDeque::new();
        let n = senate.len();        

        for (i, senator) in senate.chars().enumerate() {
            if senator == 'R' {
                r_queue.push_back(i);
            } else {
                d_queue.push_back(i);
            }
        }

        while !r_queue.is_empty() && !d_queue.is_empty() {
            let r_index = r_queue.pop_front().unwrap();
            let d_index = d_queue.pop_front().unwrap();

            if r_index < d_index {
                r_queue.push_back(r_index + n);
            } else {
                d_queue.push_back(d_index + n);
            }
        }

        if r_queue.is_empty() {
            "Dire".to_string()
        } else {
            "Radiant".to_string()
        }
    }
}