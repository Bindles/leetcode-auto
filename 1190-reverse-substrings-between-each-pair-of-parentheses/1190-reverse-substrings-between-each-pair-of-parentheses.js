/**
 * @param {string} s
 * @return {string}
 */
var reverseParentheses = function(s) {
  const stack = [];
  for (let char of s) {
    if (char === ')') {
      const temp = [];
      while (stack[stack.length - 1] !== '(') {
        temp.push(stack.pop());
      }
      stack.pop(); // remove the '('
      stack.push(...temp);
    } else {
      stack.push(char);
    }
  }
  return stack.join('');
};