impl Solution {
    pub fn max_repeating(sequence: String, word: String) -> i32 {
        let mut k=0;
        let mut repeated_word = word.clone();
        while sequence.contains(&repeated_word) {
            k+=1;
            repeated_word.push_str(&word);
        }
        k
    }
}

