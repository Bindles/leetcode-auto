impl Solution {
    pub fn find_words_containing(words: Vec<String>, x: char) -> Vec<i32> {
        let mut res = vec![];
        for (index, word) in words.iter().enumerate() {
            if word.contains(x) {
                res.push(index as i32);
            }
        }
        res
    }
}