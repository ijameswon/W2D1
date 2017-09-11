require_relative "Piece.rb"
require_relative "NullPiece.rb"
require_relative "Bishop.rb"
require_relative "Rook.rb"
require_relative "Knight.rb"
require_relative "Pawn.rb"
require_relative "King.rb"
require_relative "Queen.rb"
require "byebug"



class Board

  PIECES = ["Rook", "Knight","Bishop","Queen","King","Pawn"]
  attr_reader :board

  def initialize()
    @board = Array.new(8) {Array.new(8)}

  end

  class StartError < StandardError
    def message
      "There is no piece here. Select another position"
    end
  end

  class EndError < StandardError
    def message
      "This is not a valid move. Select another end position"
    end

  end


  def move_piece(start_pos, end_pos)
    begin
      start = start_pos

    rescue ArgumentError
      puts "There is no piece at #{start_pos}"
    end

    starting = self[start_pos]
    ending = self[end_pos]

    starting_pos = self[start_pos].pos
    ending_pos = self[end_pos].pos

    self[end_pos] = starting
    self[start_pos] = ending

    self[end_pos].pos = starting_pos
    self[start_pos].pos = ending_pos

  end

  # def validate_input(input1, input2)
  #       if @board[input1].class == NullPiece
  #         raise InvalidInputError.new("There is no position there")
  #       elsif @board[input2].class
  #
  #       end
  #
  # end

  # def take_input(input1, input2)
  #   puts "Pick a piece!"
  #   input1 = gets.chomp
  #   puts "Where's it going?"
  #   input2 = gets.chomp
  # end
  #
  # def valid_start(input)
  # end
  #
  # def valid_end(input)
  # end

  def [](pos)
    x,y = pos
    board[x][y]
  end

  def []=(pos, piece)
    x,y = pos
    board[x][y]= piece
  end

  def make_starting_grid
    set_white_pieces
    set_black_pieces
    set_null_pieces


  end

  def set_white_pieces

    8.times do |sq|
      @board[6][sq] = Piece.new([6,sq],"Pawn","White")
    end

    pieces = ["Rook", "Knight","Bishop","Queen","King","Bishop","Knight","Rook"]

    8.times do |sq|
      @board[7][sq] = Piece.new([7,sq],pieces[sq],"White")
    end

  end

  def set_black_pieces
    8.times do |sq|
      @board[1][sq] = Piece.new([1,sq],"Pawn","Black")
    end

    pieces = ["Rook", "Knight","Bishop","Queen","King","Bishop","Knight","Rook"].reverse

    8.times do |sq|
      @board[0][sq] = Piece.new([0,sq],pieces[sq],"Black")
    end


  end

  def set_null_pieces
    (2..5).each do |row|
      @board[row].each_with_index do |_, idx|
        @board[row][idx] = NullPiece.new([row, idx], "NullPiece")
      end
      @board
    end
  end

  def in_bounds(pos)
    (pos.first < 7 && pos.first > 0) && (pos.last < 7 && pos.last > 0)

  end

end #end class Board
