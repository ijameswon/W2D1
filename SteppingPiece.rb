module SteppingPiece
  def moves
    moves = []
    self.move_dirs.each do |move|
      moves << [self.pos.first + move.first, self.pos.last + move.last]
    end

    moves

  end
end
