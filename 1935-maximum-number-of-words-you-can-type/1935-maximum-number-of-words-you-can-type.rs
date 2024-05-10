impl Solution {
    pub fn can_be_typed_words(text: String, broken_letters: String) -> i32 {
        text.split_whitespace().filter(|word| word.chars().all(|c| !broken_letters.contains(c))).count() as i32
    }
}
