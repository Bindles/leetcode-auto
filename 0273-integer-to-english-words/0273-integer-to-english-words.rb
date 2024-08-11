LESS_THAN_20 = [
"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine",
"Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen",
"Seventeen", "Eighteen", "Nineteen"
]
TENS = [
"", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"
]
THOUSANDS = ["", "Thousand", "Million", "Billion"]
def number_to_words(num)
  return "Zero" if num == 0

  i = 0
  words = ""

  while num > 0
    if num % 1000 != 0
      words = helper(num % 1000) + THOUSANDS[i] + " " + words
    end
    num /= 1000
    i += 1
  end

  words.strip
end

private

def helper(num)
  if num == 0
    ""
  elsif num < 20
    LESS_THAN_20[num] + " "
  elsif num < 100
    TENS[num / 10] + " " + helper(num % 10)
  else
    LESS_THAN_20[num / 100] + " Hundred " + helper(num % 100)
  end
end