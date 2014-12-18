class Helenism
  def initialize(quote)
    @quote = quote
  end

  def fuck_shit_frequency
    fuck_shit_count.to_f / word_count.to_f
  end

  def intoxication_state
    if fuck_shit_frequency < 0.2
      :working
    elsif
      :buzzed
    elsif
      :drunk
    else
      :wasted
    end
  end

  protected
  def word_count
    @word_count ||= @quote.scan(/(\w|-)+/).size
  end

  def fuck_shit_count
    @fuck_shit_count ||= @quote.scan(/(fuck|shit)/).size
  end
end
