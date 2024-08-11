impl Solution {
    pub fn generate_parenthesis(n: i32) -> Vec<String> {
        let mut result = Vec::new();
        
        // Recursive helper function to build the parentheses combinations
        fn backtrack(result: &mut Vec<String>, current: String, open: i32, close: i32, max: i32) {
            // If the current string is complete, add it to the result
            if current.len() == (max * 2) as usize {
                result.push(current);
                return;
            }
            
            // Add an open parenthesis if we still have open ones available
            if open < max {
                backtrack(result, format!("{}(", current), open + 1, close, max);
            }
            
            // Add a close parenthesis if it won't lead to an invalid sequence
            if close < open {
                backtrack(result, format!("{})", current), open, close + 1, max);
            }
        }
        
        // Start backtracking with an empty string and no parentheses used yet
        backtrack(&mut result, String::new(), 0, 0, n);
        
        result
    }
}

