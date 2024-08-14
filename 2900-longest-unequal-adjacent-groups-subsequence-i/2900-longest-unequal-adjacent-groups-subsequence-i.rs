impl Solution {
    pub fn get_longest_subsequence(words: Vec<String>, groups: Vec<i32>) -> Vec<String> {
        let mut subsequence = Vec::new();
        let mut last_group = groups[0];
        
        subsequence.push(words[0].clone());
        
        for i in 1..words.len() {
            if groups[i] != last_group {
                subsequence.push(words[i].clone());
                last_group = groups[i];
            }
        }
        
        subsequence
    }
}