require 'pry'

class String

  def sentence?
    if self.end_with?"."
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?"?"
      return true
    else
      return false
    end
  end




  def exclamation?
    if self.end_with?"!"
      return true
    else
      return false
    end

  end
  # capital_count = your_string.scan(/[A-Z]/).length
  def count_sentences
    return self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count

  end
end