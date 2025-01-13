impl Solution {
    pub fn string_matching(words: Vec<String>) -> Vec<String> {
        words.iter()
            .filter(|&word| {
                words.iter().any(|x| x != word && x.contains(word.as_str()))
            })
            .map(|word| word.to_string())
            .collect()
    }
   
}