int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int compress(std::vector<char>& chars) {
        int i = 0, res = 0, n = chars.size();
        
        while (i < n) {
            char letter = chars[i];
            int count = 0;

            while (i < n && chars[i] == letter) {
                count++;
                i++;
            }
            
            chars[res] = letter;
            res++;
            
            if (count > 1) {
                for (char digit : std::to_string(count)) {
                    chars[res] = digit;
                    res++;
                }
            }
        }
        return res;
    }
};