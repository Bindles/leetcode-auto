public class Solution {
    public int CountPrefixes(string[] words, string s) {
        return words.Count(word => s.StartsWith(word));
    }
}