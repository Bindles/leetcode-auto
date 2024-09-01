class Solution {
public:
    bool checkRecord(string s) {
        int absences = 0, lates = 0;
        for (char chr : s) {
            switch(chr) {
                case 'A':
                    absences++;
                    if (absences == 2) return false;
                    lates = 0;
                    break;
                case 'L':
                    lates++;
                    if (lates == 3) return false;
                    break;
                case 'P':
                    lates = 0;
                    break;
            }
        }
        
        return true;
    }
};

