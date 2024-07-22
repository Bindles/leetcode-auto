class Solution {
public:
    bool checkZeroOnes(string s) {
        int zeroCount(0), maxZeros(0), oneCount(0), maxOnes(0);
        for (char chr : s) {
            if (chr == '1') {
                oneCount++;
                maxOnes=max(maxOnes, oneCount);
                zeroCount=0;
            } else if (chr == '0') {
                zeroCount++;
                maxZeros=max(maxZeros, zeroCount);
                oneCount=0;
            }
        }
        return maxOnes > maxZeros;
    }
};