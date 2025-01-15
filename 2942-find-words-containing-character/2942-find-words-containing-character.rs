impl Solution {
    pub fn find_words_containing(words: Vec<String>, x: char) -> Vec<i32> {
        words.iter().enumerate()
        .flat_map(|(index, word)| word.contains(x).then_some(index as i32))
        .collect()
    }
}