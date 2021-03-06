require_relative "piece"
require_relative "./modules/stepping_piece"

class King < Piece
  include SteppingPiece
  DELTA = [[0, 1], [1, 0], [0, -1], [-1, 0],
           [1, 1], [1, -1], [-1, 1], [-1, -1]]

  def initialize(board, color, pos)
    super(board, color, pos)
  end

  def move_diff
    DELTA
  end

  def symbol
    if color == :black
      " #{"\u265A".encode('utf-8')} "
    else
      " #{"\u2654".encode('utf-8')} "
    end
  end
end
