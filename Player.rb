class Player
  attr_reader :name, :live

  def initialize(name)
    @name = name
    @live = 3
  end

  def lose_life
    @live -= 1
  end
end