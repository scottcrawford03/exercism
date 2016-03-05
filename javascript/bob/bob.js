//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
  var hasLetters = input.match(/[a-z]+/i)
  var isShouting = input == input.toUpperCase();
  var isQuestioning = input.slice(-1) == '?';
  var isEmpty = input.trim().length == 0

  if(hasLetters && isShouting) {
    return "Whoa, chill out!";
  } else if(isQuestioning) {
    return "Sure.";
  } else if(isEmpty) {
    return "Fine. Be that way!";
  } else {
    return "Whatever.";
  }
};

module.exports = Bob;
