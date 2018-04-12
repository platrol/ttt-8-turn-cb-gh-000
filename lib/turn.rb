def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken?(board, index)
  !(board[index] ==  " " || board[index] == "" || board[index] == nil)
end

def display_board(board)
  puts " #{board[1]} | #{board[2]} | #{board[3]}"
  puts "-----------"
  puts " #{board[4]} | #{board[5]} | #{board[6]}"
  puts "-----------"
  puts " #{board[7]} | #{board[8]} | #{board[9]}"
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip.to_i - 1
  if valid_move(board)
    return   display_board(board)
  else
    turn(board)
  end
end
