class Word < ActiveRecord::Base
  def self.anagrams(user_input)
    sig = user_input.downcase.chomp
    sig = sig.split(//).sort.join('')
    Word.where(signature: sig)
  end
end
