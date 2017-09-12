require_relative 'Piece.rb'
require_relative 'SteppingPiece.rb'

class Pawn < Piece


  def move_dirs
    [[1,0],[-1,0],[0,1],[0,-1]]
  end

  def to_s
    if self.color == :black
      "♟"
    else
      "♙"
    end
  end
end
