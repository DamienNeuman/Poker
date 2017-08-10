class Card
  attr_reader :value, :suit

  def initialize(value,suit)
    @value = value
    @suit = suit
  end

  def render
    case @value
    when @value == 1
      @value = "ACE"
    when @value == 11
      @value = "JACK"
    when @value == 12
      @value = "QUEEN"
    when @value == 13
      @value = "KING"
    else
      @value
    end

    puts "#{@value} of #{@suit}"
  end
end
