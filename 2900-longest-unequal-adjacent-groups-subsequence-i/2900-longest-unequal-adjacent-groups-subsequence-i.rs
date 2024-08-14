impl Solution {
    pub fn get_longest_subsequence(words: Vec<String>, groups: Vec<i32>) -> Vec<String> {
        let mut subsequence = Vec::new();
        subsequence.push(words[0].clone());

        for i in 1..words.len() {
            if groups[i] != groups[i-1] {
                subsequence.push(words[i].clone());
            }
        }
        subsequence
    }
}
