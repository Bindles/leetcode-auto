# @param {String} number
# @return {String}
def reformat_number(number)
  number = number.gsub('-', '').gsub(' ', '')

  # Initialize an empty result string
  result = ''

  # Loop to create groups of 3 until there are 4 or fewer digits left
  while number.size > 4
    result += number.slice!(0, 3) + '-'
  end

  # Handle the final group of 4 or fewer digits
  if number.size == 4
    result += number.slice!(0, 2) + '-' + number
  else
    result += number
  end

  result
end