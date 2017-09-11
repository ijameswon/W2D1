require_relative 'Cursor.rb'

class Display
  def iniitalize
    @cursor = Cursor.new([0,0],board)
  end

  
end
