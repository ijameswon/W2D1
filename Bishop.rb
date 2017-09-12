require_relative 'Piece.rb'
require_relative 'SlidingPiece.rb'

class Bishop < Piece
  include SlidingPiece

  def move_dirs
    [[1, 1], [-1, -1], [1, -1], [-1, 1]]
  end
  def to_s
    if self.color == :black
      "♝"
    else
      "♗"
    end
  end
end
