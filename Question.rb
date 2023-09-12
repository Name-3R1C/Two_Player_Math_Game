class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def question
    puts "What does #{@num1} plus #{@num2} equal ?"
  end

  def correct?(answer)
    return answer == (@num1 + @num2)
  end
end