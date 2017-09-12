require_relative 'Cursor.rb'
require_relative 'Board.rb'

class Display
  attr_accessor :board

  def initialize(board, cursor)
    @board = board

    @cursor = cursor


  end

  def render
    system('clear')
    board.board.each_with_index do |row, i|
      row.each_with_index do |col,j|
        if @cursor.cursor_pos == [i,j]
          print "#{col.to_s}".colorize(:green)
        else
          print "#{col.to_s}"
        end
      end
      puts ""
    end
  end

  def render_loop

    while true
      render
      @cursor.get_input
      # start_pos = @cursor.get_input
      # end_pos = @cursor.get_input
      # sel
    end
  end


end

 b = Board.new
c = Cursor.new([0,0], b)
# board = b.make_starting_grid
d = Display.new(b, c)
d.render_loop
