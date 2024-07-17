class Solution:
    def countOfAtoms(self, formula: str) -> str:
        tokens = re.findall(r'(\(|\)|[A-Z][a-z]*)(\d*)', formula)
        
        stack = [defaultdict(int)]
        
        for element, count in tokens:
            if element == '(':
                stack.append(defaultdict(int))
            elif element == ')':
                last_counts = stack.pop()
                multiplier = int(count) if count else 1
                for key, value in last_counts.items():
                    stack[-1][key] += value * multiplier
            else:
                count = int(count) if count else 1
                stack[-1][element] += count
        
        final_counts = sorted(stack.pop().items())
        return ''.join([f"{element}{count if count > 1 else ''}" for element, count in final_counts])        