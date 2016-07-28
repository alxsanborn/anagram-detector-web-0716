# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    matches = Array.new
    word_array = Array.new
    anagram_array = Array.new

    @word.each_char {|letter| word_array << letter}
    
    anagrams.each {|anagram|
      anagram.each_char {|letter|
        anagram_array << letter}
        if word_array.sort == anagram_array.sort
          sorted_anagram = anagram_array.join
          matches << sorted_anagram
        end
        anagram_array = Array.new
        }
    matches
  end

end