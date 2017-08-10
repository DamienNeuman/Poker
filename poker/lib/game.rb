require_relative 'deck'
require_relative 'player'

class Game
  def initialize
    @deck = Deck.new
    @players = get_players
    @pot = 0
  end

  def get_players
    array = []
    puts "How many players?"
    num = gets.chomp
    puts "Starting bank size?"
    bank = gets.chomp
    num.to_i.times do |i|
      puts "Enter player #{i + 1} name"
      name = gets.chomp
      array << Player.new(name, bank)
    end
    array
  end

  def play

  end

  def game_won?
    if @players.length == 1
      winner = @players[0]
    end
    puts "#{[winner.name]} won the game!"
  end

  def round_won?
    if players.length == 1
      round_winner = players[0]
    end
    puts "#{round_winner.name} won the hand"
  end
end

g = Game.new
