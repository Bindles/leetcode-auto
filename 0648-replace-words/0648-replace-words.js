/**
 * @param {string[]} dictionary
 * @param {string} sentence
 * @return {string}
 */
var replaceWords = function(dictionary, sentence) {
  dictionary.sort((a, b) => a.length - b.length);
  let result = '';
  let words = sentence.split(' ');

  for (let word of words) {
    let sub_str = word;
    for (let item of dictionary) {
      if (sub_str.startsWith(item)) {
        sub_str = item;
        break;
      }
    }
    result += sub_str + ' ';
  }

  return result.trim();
};