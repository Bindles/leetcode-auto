# @param {Integer[][]} intervals
# @return {Integer}
def erase_overlap_intervals(intervals)
    return 0 if intervals.empty?

    # Sort intervals by end time
    intervals.sort_by! { |interval| interval[1] }

    count_remove = 0
    p last_end = intervals[0][1]

    (1...intervals.length).each do |i|
        if intervals[i][0] < last_end
            # Overlapping interval found, increment count_remove
            count_remove += 1
        else
            # Non-overlapping interval found, update last_end
            last_end = intervals[i][1]
        end
    end

    return count_remove
end