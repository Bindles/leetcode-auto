int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int numberOfAlternatingGroups(vector<int>& colors) {
        int count =0, n= colors.size();
        for(int i=0;i<n;i++) {
             if(colors[i] != colors[(i+1)%n] && colors[(i+1)%n] != colors[(i+2)%n]) count++;
        }
        return count;
    }
};



