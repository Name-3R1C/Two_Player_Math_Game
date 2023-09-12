require "./Player"
require "./Question"

class Game
  attr_reader :players

  def initialize
    @players = [Player.new("Player 1"), Player.new("Player 2")]
  end

  def start
    current = 0
    loop do
      question = Question.new()
      question.question(players[current].name)
      
      answer = gets.chomp.to_i
      if question.correct?(answer)
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        players[current].lose_life
      end

      if players[0].live <= 0 || players[1].live <= 0
        break
      end

      puts "----- NEW TURN -----"
      self.score
      current = (current + 1) % 2
    end
    
    self.winner(players[0].live > 0 ? 0 : 1)
  end

  def score
    puts "P1: #{players[0].live}/3 vs P2: #{players[1].live}/3"
  end

  def winner(i)
    puts "#{players[i].name} wins with a score of #{players[i].live}/3"
    puts "----- GAME OVER -----"
    puts "Good Bye!"
  end
end

game = Game.new()
game.start()