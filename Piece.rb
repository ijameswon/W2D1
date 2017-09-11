require "byebug"
class Piece
  attr_accessor :pos
  debugger
  def initialize(pos, type, color = nil)
    @pos = pos
    @type = type
    @color = color
  end
end #end Piece class
