require_relative 'SteppingPiece.rb'
require_relative 'Piece.rb'

class King < Piece
  include SteppingPiece
  def move_dirs
    [[1,0],[-1,0],[1,1],[-1,-1],[0,-1],[0,1],[-1,1],[1,-1]]
  end

  def to_s
    if self.color == :black
      "♚"
    else
      "♔"
    end
  end
end
