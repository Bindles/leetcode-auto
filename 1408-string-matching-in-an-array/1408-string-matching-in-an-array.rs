impl Solution {
    pub fn string_matching(words: Vec<String>) -> Vec<String> {
        let mut results = vec![];
        for word in &words {
            if words.iter().any(|x| x != word && x.contains(word)) {
                results.push(word.clone());
            }
        }
        results
    }
}
