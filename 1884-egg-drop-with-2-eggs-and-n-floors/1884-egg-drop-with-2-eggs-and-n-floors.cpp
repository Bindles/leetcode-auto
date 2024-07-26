class Solution {
public:
    int twoEggDrop(int n) {
        int res=0;
        while(n>0) {
            res++;
            n -= res;
        }
        return res;
    }
};