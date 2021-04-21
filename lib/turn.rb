def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  elsif position_taken?(board, index) == true
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def input_to_index(user_input)
  converted_input = user_input.to_i
  index = converted_input - 1
end

def move(array, index, char = "X")
  array[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
end
