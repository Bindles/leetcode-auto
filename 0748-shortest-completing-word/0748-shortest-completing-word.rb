# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
    # Define a lambda to check if a character is alphabetic
    is_alpha = -> (chr) { chr.match?(/[a-zA-Z]/) }
    # Extract and lowercase alphabetic characters from license_plate
    letters_to_contain = license_plate.downcase.chars.select(&is_alpha).join
    shortest_word = nil
    
    words.each do |word|
        word_chars = word.downcase.chars
        # Check if word contains all letters in letters_set with correct frequencies
        if letters_to_contain.chars.all? { |c| word_chars.count(c) >= letters_to_contain.count(c) }
            # Update shortest_word if it's nil or current word is shorter
            if shortest_word.nil? || word.length < shortest_word.length
                shortest_word = word
            end
        end
    end
    
    shortest_word
end