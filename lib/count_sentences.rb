require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(" ")
    sentences = []
    array.each do |chunk|
      sentences << chunk if chunk.sentence? || chunk.question? || chunk.exclamation?
    end
    
    sentences.length
  end
end

# st1 = String.new("What's up? I'm doing ok. It's cold!")

# st1.count_sentences