require "./Player"
require "./Question"

class Game
  def initialize
    @players = [Player.new("Player 1"), Player.new("Player 2")]
  end

  def start
    puts @players[0].name
    puts @players[1].name
    current = 0
    while @players[0].live > 0 && @players[1].live > 0
      question = Question.new()
      question.question
      self.score
      @players[0].lose_life
    end
  end

  def score
    puts "P1: #{@players[0].live}/3 vs P2: #{@players[1].live}/3"
  end
end
# puts "tesing "
# answer = gets.chomp
# puts answer

# puts question.num1
# puts question.num2
# puts question.correct?(5)

game = Game.new()
game.start()