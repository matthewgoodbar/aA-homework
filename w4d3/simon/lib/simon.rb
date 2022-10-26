require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)
  C_HASH = {r:"red", b:"blue", g:"green", y:"yellow"}

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until self.game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    if require_sequence
      round_success_message
      self.sequence_length += 1
    else
      self.game_over = true
    end
  end

  def show_sequence
    add_random_color
    self.seq.each do |color|
      system("clear") || system("cls")
      puts color.colorize(color.to_sym)
      sleep(0.7)
      system("clear") || system("cls")
      sleep(0.3)
    end
  end

  def require_sequence
    system("clear") || system("cls")
    puts "Enter Sequence (r,b,g,y): "
    player_input = gets.chomp.split(" ")
    player_input.map! {|input| C_HASH[input.to_sym]}
    return player_input == @seq
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    system("clear") || system("cls")
    puts "Nice Job! Get ready now..."
    sleep(1)
  end

  def game_over_message
    system("clear") || system("cls")
    puts "GAME OVER"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end

Simon.new.play