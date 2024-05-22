class Solution:
    def earliestFullBloom(self, plantTime: List[int], growTime: List[int]) -> int:
        rest_day = 0
        more_necessary_days = []
        for plant_day, grow_day in sorted(zip(plantTime, growTime), key=lambda x: x[1]):
            if rest_day < grow_day:
                more_necessary_days.append(grow_day - rest_day)
            rest_day += plant_day
        return sum(plantTime) + max(more_necessary_days)