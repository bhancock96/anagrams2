class Word < ActiveRecord::Base
  def anagrams
    Word.find_by_signature()
  end
end
