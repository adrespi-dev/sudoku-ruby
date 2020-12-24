# class SudokuValidator
#   # @param {Character[][]} board
#   # @return {Boolean}
#   def is_valid_sudoku(board)
      
#   end
# end

class SudokuValidator
  # @param {Character[][]} board
  # @return {Boolean}
  def is_valid_sudoku(board)
    cols = Array.new(9, 0)
    grids = Array.new(9, 0)

    0.upto(8) do |i|
      row = 0

        0.upto(8) do |j|
          num = board[i][j].to_i

            next if num.zero?

            bit = 1 << num 

            if row & bit > 0
                return false
            end
            row |= bit

            if cols[j] & bit > 0
                return false
            end
            cols[j] |= bit

            k = (i / 3) * 3 + (j / 3)
            if grids[k] & bit > 0
                return false
            end
            grids[k] |= bit
        end
    end

    true
  end
end
