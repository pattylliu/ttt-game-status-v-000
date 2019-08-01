# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
[
  [0, 1, 2], #top row
  [3, 4, 5], #mid row
  [6, 7, 8], #bot row
  [0, 3, 6], #1st column
  [1, 4, 7], #2nd column
  [2, 5, 8], #3rd column
  [0, 4, 8], #1st diagonal
  [2, 4, 6] #2nd diagonal
]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# won?
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |win_index|
      win_index.each do |position|
        position = board[win_index]
          if position == " "
            return false
          else
            false
        end
      end
    end
  end
end
