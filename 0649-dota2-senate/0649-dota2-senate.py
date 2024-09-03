class Solution:
    def predictPartyVictory(self, senate: str) -> str:
        r_queue = []
        d_queue = []
        n = len(senate)        

        for i, senator in enumerate(senate):
            if senator == 'R':
                r_queue.append(i)
            else:
                d_queue.append(i)

        while r_queue and d_queue:
            r_index = r_queue.pop(0)
            d_index = d_queue.pop(0)

            if r_index < d_index:
                r_queue.append(r_index + n)
            else:
                d_queue.append(d_index + n)

        return "Radiant" if r_queue else "Dire"
        