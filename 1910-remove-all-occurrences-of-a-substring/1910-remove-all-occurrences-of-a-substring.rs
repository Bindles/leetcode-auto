impl Solution {
    pub fn remove_occurrences(mut s: String, part: String) -> String {
        while let Some(pos) = s.find(&part) {
            s.drain(pos..pos + part.len());
        }
        s
    }
}