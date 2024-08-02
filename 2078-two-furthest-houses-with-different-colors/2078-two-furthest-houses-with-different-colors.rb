def max_distance(colors)
    l = maxdist = dist = 0  
    r = colors.size - 1
    

    while l < r  
        if colors[l] == colors[r]
            r -= 1
        else 
            dist = r - l
            maxdist = dist if dist > maxdist
            l += 1
        end
    end
    maxdist
end