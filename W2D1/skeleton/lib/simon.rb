require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @game_over = false
    @sequence_length = 1
  end

  def play

    until game_over
      sleep(1)
      take_turn
    end
    game_over_message
    p seq
    reset_game
  end

  def take_turn
    system("clear")
    show_sequence
    require_sequence
    round_success_message unless game_over
    self.sequence_length += 1

  end

  def show_sequence
    i = 0
    while i < sequence_length
      add_random_color
      i += 1
    end
    seq.each do |color|
      puts(color.colorize(color.to_sym))
      sleep(1)
      system("clear")
      puts('****'.colorize(:light_magenta))
      sleep(0.2)
      system("clear")
    end
  end

  def require_sequence
    seq.each do |color|
      print '>'
      input = gets.chomp
      if color != input
        @game_over = true
        return
      end
    end
  end



  def add_random_color
    self.seq.push(COLORS.sample)
  end

  def round_success_message
    puts("successful round!")

  end

  def game_over_message
    puts("game over")

  end

  def reset_game
    self.seq = []
    self.sequence_length = 1
    self.game_over = false

  end
end
