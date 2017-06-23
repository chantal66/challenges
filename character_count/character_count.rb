require 'pry'
class CharacterCount

  def s_to_h(string)
    word_frequency = Hash.new(0)
    string.chars.each do |letter|
      word_frequency[letter] += 1
    end
    word_frequency
  end

  def h_to_s(s_to_h)
    s_to_h.map do |k,v|
      "#{k}: #{v}"
    end.join(' ')
  end
end



