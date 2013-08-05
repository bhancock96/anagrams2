def import_words
  File.open('words','r').each do |line|
    word = line.chomp.downcase
    sig = word.split(//).sort.join('')
    Word.create(word: word, signature: sig)
  end
end

import_words

