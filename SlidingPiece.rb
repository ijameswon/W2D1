require 'byebug'

module SlidingPiece
  def moves
    moves = []

    debugger
    self.move_dirs.each do |move|
      new_pos = [self.pos.first + move.first, self.pos.last + move.last]
      until self.board[new_pos].class != NullPiece || !self.board.in_bounds(new_pos)
        moves << new_pos
        new_pos = [new_pos.first + move.first, new_pos.last + move.last]
      end
    end
    moves
  end

end
