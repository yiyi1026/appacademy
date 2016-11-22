require_relative "board"
require_relative "player"
require_relative "display"
require "byebug"

class Game
  attr_reader :board, :display, :curr_player, :players

  def initialize
    @board = Board.new
    @display = Display.new(@board)
    @players = {
      white: HumanPlayer.new(:white, @display),
      black: HumanPlayer.new(:black, @display)
    }
    @curr_player = :white
  end

  def play
    until board.check_mate?
      begin
        from, to = players[curr_player].make_move(board)
        board.move_piece(@curr_player, from, to)
        swap_turn!
      rescue ArgumentError => e
        puts "Try again! #{e.message}"
        sleep(0.5)
      ensure
        notify_players
      end
    end

    display.render
    puts "#{curr_player} won!"
  end

  private

  def notify_players
    puts "Current player is #{curr_player}"
  end

  def swap_turn!
    @curr_player = (@curr_player == :white) ? :black : :white
  end
end


if __FILE__ == $PROGRAM_NAME
  game = Game.new
  game.play
end
