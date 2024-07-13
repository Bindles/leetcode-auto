class Solution:
  def compress(self, chars: List[str]) -> int:
    i = res = 0

    while i < len(chars):
      letter = chars[i]
      count = 0
      while i < len(chars) and chars[i] == letter:
        count += 1
        i += 1
      chars[res] = letter
      res += 1
      if count > 1:
        for digit in str(count):
          chars[res] = digit
          res += 1

    return res