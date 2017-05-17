def  translate(string)
  vowels = %w[a e i o u]
  words = string.split(" ")
  pig_bank = []
  words.each do |word|
    word.chars.each_with_index do |ch, idx|
      if vowels.include?(ch) && idx == 0
          pig_bank << word[idx..-1] + "ay"
          break
      elsif vowels.include?(ch)
        if ch == "u" && word[idx - 1] == "q"
          pig_bank << word[idx + 1..-1] + word[0..idx] + "ay"
        else
          pig_bank <<  word[idx..-1] + word[0..idx-1] + "ay"
        end
        break
      end
    end
  end
  pig_bank.join(" ")
end


# Split this down to small method components
