class Solution:
    def compress(self, chars: List[str]) -> int:
        read_index = 0
        write_index = 0
        
        while read_index < len(chars):
            current_char = chars[read_index]
            count = 0
            print(f"\nProcessing character: {current_char}")

            # Count the occurrences of the current character
            while read_index < len(chars) and chars[read_index] == current_char:
                read_index += 1
                count += 1
                print(f"Counting {current_char}: count = {count}, read_index = {read_index}")
            
            # Write the character to the array
            chars[write_index] = current_char
            print(f"Writing character {current_char} to index {write_index}")
            write_index += 1
            
            # Write the count to the array if it's more than 1
            if count > 1:
                for digit in str(count):
                    chars[write_index] = digit
                    print(f"Writing digit {digit} to index {write_index}")
                    write_index += 1
            
            print(f"Current state of chars: {chars[:write_index]} (up to index {write_index})")
        
        print(f"\nFinal compressed list: {chars[:write_index]}")
        return write_index


