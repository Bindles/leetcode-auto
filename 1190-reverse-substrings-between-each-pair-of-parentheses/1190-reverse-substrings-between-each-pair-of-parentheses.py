class Solution:
    def reverseParentheses(self, s: str) -> str:
        stack = []
        for char in s:
            if char == ")":
                temp = ""
                while stack[-1] != "(":
                    temp += stack.pop()
                stack.pop()
                for tch in temp:
                    stack.append(tch)
            else:
                stack.append(char)
        
        return "".join(stack)