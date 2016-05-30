class PagesController < ApplicationController
  def score
  	@sentence = params[:search_term]
  end
  def gamee
def most_common_words(file_name, stop_words_file_name, number_of_word)
  h2 = {}
  f = File.open(stop_words_file_name, "r")
  f2 = File.open(file_name, "r")
  f2.each_line { |line|
  words2 = line.gsub(/\W/, ' ').split(" ")
  words2.each { |w|
    if h2.has_key?(w.downcase)
     h2[w.downcase] = h2[w.downcase] + 1
    else
      h2[w.downcase] = 1
    end
  }
}
f.each_line { |line|
  words = line.split
  words.each { |w|
  	h2.delete(w.downcase) if h2.has_key?(w.downcase)
  }
}
Hash[h2.sort_by { |_, v| -v }.first 6]
end
  end
end
