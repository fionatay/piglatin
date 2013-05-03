class PigLatin
  def self.translate(string)
    string.gsub(/[a-zA-Z]+/) do |match|
      self.translate_word(match)
    end
  end

  def self.translate_word(word)
    return word if word.length == 0

    first = word[0]

    cluster, remainder = word.match(/^(qu|[^aeiou]*)(.*)/i).captures
    string = remainder + cluster + 'ay'

    capitalized = (first == first.upcase)
    string.capitalize! if capitalized
    string
  end
end