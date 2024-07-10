int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    char nextGreatestLetter(vector<char>& letters, char target) {
        if (target >= letters.back()) return letters[0] ;
        int low = 0, high = letters.size();
    
        while( low < high) {
            int mid = low + (high-low) / 2;
            if (letters[mid] <= target) {
                low = mid + 1; 
            } else {
                high = mid;
            }
        }

        return letters[low];        
    }
};