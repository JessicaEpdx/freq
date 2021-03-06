class String
  define_method(:freq) do |given_sentence|

    new_sentence=given_sentence.gsub(/[^A-Za-z0-9\s]/i, '')
    sentence_words=new_sentence.split()
    word_to_count=self.downcase()
    number_of_times=0

    sentence_words.each() do |word_in_sentence|
      if word_in_sentence.downcase()==word_to_count
        number_of_times+=1
      end
    end
    number_of_times
  end
end
