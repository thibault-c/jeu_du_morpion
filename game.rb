require_relative 'boardcase.rb'

class Game

	def initialize(joueur_1, joueur_2)
		@nom_joueur_1 = joueur_1
		@nom_joueur_2 = joueur_2
	end

	def instance_case
		for i in (1..9)
			if i%2 != 0
				puts "Sur quelle colonne veux-tu jouer " + @nom_joueur_1.to_s + "?"
				x = gets.chomp.to_i
				puts "Sur quelle ligne veux-tu jouer " + @nom_joueur_1.to_s + "?"
				y = gets.chomp.to_i
				trial = "trial" + i.to_s
				trial = BoardCase.new(x,y,'joueur_1')
				#joueur = "joueur_1"
				trial.boardcase_update#(x,y,@joueur_1)
				#strial.tableau
			else
				puts "Sur quelle colonne veux-tu jouer " + @nom_joueur_2.to_s + "?"
				x = gets.chomp.to_i
				puts "Sur quelle ligne veux-tu jouer " + @nom_joueur_2.to_s + "?"
				y = gets.chomp.to_i
				trial = "trial" + i.to_s
				trial = BoardCase.new(x,y,'joueur_2')
				#joueur = "joueur_2"
				trial.boardcase_update#(x,y,@joueur_2)
				#trial.tableau
			end
		end
	end

	#def win_or_not
	#	return
	#end
end



