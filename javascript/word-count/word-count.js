module.exports = function expectedCount(words) {
  return words.split(/\s+/).reduce(function(wordCount, word) {
    wordCount[word] = (++wordCount[word] || 1);
    return wordCount;
  }, {})
}
