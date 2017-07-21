require_relative 'boardcase.rb'

class Game

	@@toutes_les_reponses = []
	@@winX = []
	@@winO = []

	def initialize(joueur_1, joueur_2)
		@nom_joueur_1 = joueur_1
		@nom_joueur_2 = joueur_2
	end

	def instance_case
		for i in (1..9)
			if i%2 != 0
				
				question1
				@@toutes_les_reponses.each do |array|
					if [@x,@y] == array
						puts "position déjà occupée, recommence pute"
						question1
					end
				end
				@@winX.push([@x,@y])
				lengthX = @@winX.count
				for i in (1..lengthX)
					@@winX[i][0]


				@@toutes_les_reponses.push([@x,@y])
				trial = "trial" + i.to_s
				trial = BoardCase.new(@x,@y,'joueur_1')
				
				trial.boardcase_update#(x,y,@joueur_1)
				p @@toutes_les_reponses
				
			else
				question2
				@@toutes_les_reponses.each do |array|
					if [@x,@y] == array
						puts "position déjà occupée, recommence pute"
						question2
					end
				end	
				@@toutes_les_reponses.push([@x,@y])
				trial = "trial" + i.to_s
				trial = BoardCase.new(@x,@y,'joueur_2')
				
				trial.boardcase_update#(x,y,@joueur_2)
				p @@toutes_les_reponses
				
			end
		end
	end

	def question1
		puts "Sur quelle ligne veux-tu jouer " + @nom_joueur_1.to_s + "?"
		x = gets.chomp.to_i
		@x = x
		puts "Sur quelle colonne veux-tu jouer " + @nom_joueur_1.to_s + "?"
		y = gets.chomp.to_i
		@y = y
	end

	def question2
		puts "Sur quelle ligne veux-tu jouer " + @nom_joueur_2.to_s + "?"
		x = gets.chomp.to_i
		@x = x
		puts "Sur quelle colonne veux-tu jouer " + @nom_joueur_2.to_s + "?"
		y = gets.chomp.to_i
		@y = y
	end


	#def win_or_not
	#	return
	#end
end



