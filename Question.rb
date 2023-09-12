class Question
  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
  end

  def question
    puts "What does #{@num1} plus #{@num2} equal?"
  end

  def correct?(answer)
    
  end
end