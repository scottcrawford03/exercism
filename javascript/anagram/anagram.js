module.exports = function Anagram(firstWord) {
  var sortedFirstWord = firstWord.toLowerCase().split('').sort().join('')
  return {
    matches: function () {
      var args = Array.prototype.slice.call(arguments);
      var flat_args = [].concat.apply([], args);
      var sortedWordArray = flat_args.map(function(word){
        return word.toLowerCase().split('').sort().join('')
      });

      return sortedWordArray.reduce(function(result, word, index) {
        if (sortedFirstWord == word && flat_args[index].toLowerCase() != firstWord.toLowerCase()) {
          result.push(flat_args[index])
        }
        return result
      }, []);
    }
  };
};
