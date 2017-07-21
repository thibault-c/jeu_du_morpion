class BoardCase 

	def initialize(x,y,player)
		@x = x.to_i
		@y = y.to_i
		@player = player
		#initial_board = [[""]]
		#@initial_board = initial_board
	end


	def boardcase_update

		if @player == 'joueur_1'
			@initial_board[@x][@y] = "X"
		else
			@initial_board[@x][@y] = "O"
		end

	end

end
