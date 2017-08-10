class Player
attr_reader :name, :bank, :hand

  def initialize(name, bank)
    @name = name
    @bank = bank
    @hand = []
  end

  def name
    @name
  end

  def bank
    @bank
  end

  def hand
    @hand
  end

end
