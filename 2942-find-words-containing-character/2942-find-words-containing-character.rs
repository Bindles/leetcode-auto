impl Solution {
    pub fn find_words_containing(words: Vec<String>, x: char) -> Vec<i32> {
        words.iter().enumerate()
        .filter_map(|(index, word)| if word.contains(x) {Some(index as i32)} else {None})
        .collect()
    }
}