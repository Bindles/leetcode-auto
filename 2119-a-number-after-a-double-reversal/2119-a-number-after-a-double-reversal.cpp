class Solution {
public:
    bool isSameAfterReversals(int num) {
        string numstr = to_string(num);
        reverse(numstr.begin(), numstr.end());
        int numrev = stoi(numstr);

        numstr = to_string(numrev);
        reverse(numstr.begin(), numstr.end());
        return stoi(numstr) == num;
    }
};

