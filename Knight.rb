require_relative 'SteppingPiece.rb'
require_relative 'Piece.rb'
class Knight < Piece
  include SteppingPiece

  def move_dirs
    [[-2,1],[-2,-1],[1,2],[1,-2],[2,1],[2,-1],[-1,2],[-1,-2]]
  end
  def to_s
    if self.color == :black
      "♞"
    else
      "♘"
    end
  end
end
