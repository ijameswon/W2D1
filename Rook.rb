require_relative 'Piece.rb'
require_relative 'SlidingPiece.rb'

class Rook < Piece
  include SlidingPiece
  # attr_accessor :moves
  def move_dirs
    [[1,0],[-1,0],[0,1],[0,-1]]
  end

  def to_s
    if self.color == :black
      "♜"
    else
      "♖"
    end
  end
end
