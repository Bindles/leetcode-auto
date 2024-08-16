int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    string reformatNumber(string number) {
        string nums;
        for (char c : number) {
            if (isdigit(c)) {
                nums += c;
            }
        }

        string result;
        int n = nums.size();

        int i = 0;
        while (n > 4) {
            result += nums.substr(i, 3) + "-";
            i += 3;
            n -= 3;
        }

        if (n == 4) {
            result += nums.substr(i, 2) + "-" + nums.substr(i + 2);
        } else {
            result += nums.substr(i);
        }

        return result;
    }
};