require_relative 'boardcase.rb'

class Board < BoardCase

	def initialize

		initial_board = [[" "," "," "],[" "," "," "],[" "," "," "]]
		@initial_board = initial_board

	end

	def puts_board

		p @initial_board[0]
		p @initial_board[1]
		p @initial_board[2]

	end

end




