require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else 
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else 
      false
    end
  end

  def count_sentences
    sentence_count = 0
    self.split.each do |item|
      if item.end_with?(".", "?", "!")
        sentence_count += 1
      end
    end
    sentence_count
  end
end