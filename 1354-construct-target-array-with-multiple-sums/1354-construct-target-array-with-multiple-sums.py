class Solution:
    def isPossible(self, target: List[int]) -> bool:
        target = list(map(int, target))
        total_sum = sum(target)
        while max(target) > 1:
            max_val = max(target)
            rest_sum = total_sum - max_val
            if rest_sum <= 0 or rest_sum >= max_val:
                return False
            new_val = max_val % rest_sum
            total_sum = rest_sum + new_val
            if new_val == 0 and rest_sum > 1:
                return False
            target[target.index(max_val)] = new_val
        return True
        