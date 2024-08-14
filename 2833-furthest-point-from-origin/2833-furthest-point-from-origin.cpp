class Solution {
public:
    int furthestDistanceFromOrigin(string moves) {
        return abs( count(moves.begin(), moves.end(), 'L') - count(moves.begin(), moves.end(), 'R') ) + count(moves.begin(), moves.end(), '_');
    }
};