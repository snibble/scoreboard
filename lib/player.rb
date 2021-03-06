class Player
  attr_reader :name, :batting_average, :at_bats, :strikeouts
  attr_reader :hits, :strikes, :balls, :walks

  def initialize(name)
    @name = name
    @batting_average = 0
    @at_bats = 0
    @strikeouts = 0
    @hits = 0
    @strikes = 0
    @balls = 0
    @walks = 0
  end

  def strikeout
    @strikeouts += 1
    @at_bats += 1
    @balls = 0
    @strikes = 0
  end

  def single
    @at_bats += 1
  end

  def strike
    @strikes += 1
    self.strikeout if strikes >= 3
  end

  def ball
    @balls += 1
    self.walk if @balls >= 4
  end

  def walk
    @walks += 1
    @strikes = 0
    @balls = 0
  end
end
