var Hamming = {
  compute: function (string1, string2) {
             var splitString1 = string1.split('')
             var splitString2 = string2.split('')  

             if (string1.length != string2.length) {
              throw "DNA strands must be of equal length."
             }

             return splitString2.reduce(function(sum, letter2, index) {
              return splitString1[index] != splitString2[index] ? ++sum : sum; 
             }, 0)
           }
}
module.exports = Hamming;
