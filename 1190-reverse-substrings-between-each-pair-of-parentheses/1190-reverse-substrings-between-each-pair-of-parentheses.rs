impl Solution {
    pub fn reverse_parentheses(s: String) -> String {
        fn inner_rev(chs: &mut std::str::Chars) -> String {
            let mut res = String::new();
            while let Some(c) = chs.next() {
                if c == '(' {
                    let s = inner_rev(chs);
                    res = [res, s].concat();
                } else if c == ')' {
                    return res.chars().rev().collect::<String>();
                } else {
                    res.push(c);
                }
            }
            return res;
        }
        inner_rev(&mut s.chars())
    }
}