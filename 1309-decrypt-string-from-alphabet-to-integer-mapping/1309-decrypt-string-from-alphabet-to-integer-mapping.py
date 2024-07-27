class Solution:
    def freqAlphabets(self, s: str) -> str:
        nums = [str(i) for i in range (1, 27)]
        letters = [let for let in 'abcdefghijklmonpqrstuvwxyz']
        mapx = dict(zip(nums, letters))
        strx=''
        stack=[]

        for chr in s:
            if chr != '#':
                stack.append(chr)
            else:
                strx += stack.pop(-1)
                strx += stack.pop(-1)
                stack.append(strx[::-1])
                strx=''

        print(stack)
        return ''.join([mapx[num] for num in stack])


        

