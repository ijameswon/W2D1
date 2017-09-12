require_relative "Piece.rb"
require 'singleton'

class NullPiece < Piece
  include Singleton

  def to_s
    " "
  end
end
