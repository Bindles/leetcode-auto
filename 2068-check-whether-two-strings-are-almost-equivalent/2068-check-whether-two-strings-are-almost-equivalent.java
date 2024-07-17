import java.util.HashMap;
import java.util.Map;

class Solution {
    public boolean checkAlmostEquivalent(String word1, String word2) {
        Map<Character, Integer> charCount = new HashMap<>();
        // Count characters in word1
        for (char key : word1.toCharArray()) {
            charCount.put(key, charCount.getOrDefault(key, 0) + 1);
        }
        // Subtract count for characters in word2
        for (char key : word2.toCharArray()) {
            charCount.put(key, charCount.getOrDefault(key, 0) - 1);
        }
        // Check if the absolute difference exceeds 3 for any char
        for (int count : charCount.values()) {
            if (Math.abs(count) > 3) {
                return false;
            }
        }

        return true;
    }
}
