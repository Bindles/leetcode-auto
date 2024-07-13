public class Solution {
    public string RemoveStars(string s) {
        List<char> stack = new List<char>();

        foreach (char c in s) {
            if (c == '*') {
                if (stack.Count > 0) {
                    stack.RemoveAt(stack.Count - 1);
                }
            } else {
                stack.Add(c);
            }
        }

        return new string(stack.ToArray());
    }
}