impl Solution {
    pub fn string_matching(words: Vec<String>) -> Vec<String> {
        let mut words = words.clone();
        words.sort_by_key(|w| w.len());

        words.iter()
            .filter(|&&ref word| {
                words.iter().any(|w| w != word && w.contains(word))
            })
            .cloned()
            .collect()
    }
}