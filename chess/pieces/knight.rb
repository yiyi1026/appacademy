require_relative "piece"
require_relative "./modules/stepping_piece"

class Knight < Piece
  def initialize(color, rank)
  end

  def symbol
    if color == :black
      " #{"\u2658".encode('utf-8')} "
    else
      " #{"\u265E".encode('utf-8')} "
    end
  end
end
