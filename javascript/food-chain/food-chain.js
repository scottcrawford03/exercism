function Song(){ 
  return {
    verse: function (num) {
             var finalLine = "\nI don't know why she swallowed the fly. Perhaps she'll die.\n";
             var currentVerse = "I know an old lady who swallowed a "
               var tickleVerse = "\nIt wriggled and jiggled and tickled inside her."
               var nextVerse1 = "\nShe swallowed the "
               var nextVerse2 = " to catch the " 
               var verse1 = "fly."
               var verse2 = "spider"
               if (num == 1) {
                 return currentVerse + verse1 + finalLine
               } else {
                 return currentVerse + verse2 + "." + tickleVerse + nextVerse1 + verse2 + nextVerse2 + verse1 + finalLine
               }
           }
  }
};

module.exports = Song();
