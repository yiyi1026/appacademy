require "colorize"

class Piece
  RANKS = [:wK, :wQ, :wR, :wB, :wN, :wP, :bK, :bQ, :bR, :bB, :bN, :bP].freeze
  RANK_CODES = ["\u2654", "\u2655", "\u2656", "\u2657", "\u2658", "\u2659",
                "\u265A", "\u265B", "\u265C", "\u265D", "\u265E", "\u265F"].freeze

  attr_reader :rank

  def initialize(rank)
    @rank = rank
  end

  def moves
  end

  def to_s
    RANKS.each_with_index do |r, i|
      return " #{RANK_CODES[i].encode('utf-8')} " if rank == r
    end
  end
end
