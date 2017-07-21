

class BoardCase 
	
	initial_board = [[" "," "," "],[" "," "," "],[" "," "," "]]
	@@initial_board = initial_board

	def initialize(x,y,player)
		@x = x.to_i
		@y = y.to_i
		@player = player
		
	end


	def boardcase_update

		if @player == 'joueur_1'
			@@initial_board[@x][@y] = "X"
			p @@initial_board[0]
			p @@initial_board[1]
			p @@initial_board[2]
		else
			@@initial_board[@x][@y] = "O"
			p @@initial_board[0]
			p @@initial_board[1]
			p @@initial_board[2]
		end

	end

end
