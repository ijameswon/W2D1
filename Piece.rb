require "byebug"
require_relative "SlidingPiece.rb"

class Piece
  attr_accessor :pos, :board, :symbol, :color

  def initialize(pos = nil, color = nil, board = nil, symbol = nil)
    @pos = pos
    @color = color
    @board = board
    @symbol = symbol
  end


  # def valid_moves
  #
  #
  # end

  def move_into_check
    new_board = board.deep_dup
    valid_moves = []

    self.moves.each do |move|
      new_board.move_piece(self.pos, move)
      valid_moves << move unless self.in_check?(self.color)
      new_board.move_piece(move, self.pos)
    end
  end


  private
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end #end Piece class
