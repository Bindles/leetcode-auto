# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
    return letters[0] if target >= letters.last
    low, high = 0, letters.size-1
    
    while low < high
        mid = (low + high) / 2
        if letters[mid] <= target
            low = mid + 1 
        else
            high = mid
        end
    end
    letters[low]
end