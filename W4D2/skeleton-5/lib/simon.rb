class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    until @game_over 
      self.take_turn
    end
    self.game_over_message
    self.reset_game
    


  end

  def take_turn
    @sequence_length += 1
    p "Match the following: "
    self.show_sequence
    input = gets.chomp

    @game_over = true if input != self.require_sequence
    if !@game_over
      self.round_success_message
    end

  end

  def show_sequence
    self.add_random_color
    p @seq.join(" ")

  end

  def require_sequence
    @seq.join(" ")

  end

  def add_random_color
    @seq << ["red", "blue", "yellow", "green"].sample

  end

  def round_success_message
    p "Success!"

  end

  def game_over_message
    p "Game Over!"

  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false

  end
end

simon = Simon.new
simon.play