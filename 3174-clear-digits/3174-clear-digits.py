class Solution:
    def clearDigits(self, s: str) -> str:
      stack=[]
      for char in s:
          if char.isdigit() == True and stack[-1].isalpha() == True:
              stack.pop(-1)
          else:
            stack.append(char)

      return ''.join(stack)