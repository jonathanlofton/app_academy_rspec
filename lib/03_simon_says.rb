def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  new_words = "#{word}"
  (times - 1).times { new_words << " #{word}" }
  new_words
end

def start_of_word(word, num)
  word[0..num - 1]
end

def first_word(sentence)
  words = sentence.split(" ").first
end

def titleize(book_title)
  book_title_words = book_title.split(" ")
  dont = %w[and over the]

  book_title_words.map!.with_index do |word, idx|
    dont.include?(word) && idx != 0 ? word : word[0].upcase + word[1..-1]
  end

  book_title_words.join(" ")
end
