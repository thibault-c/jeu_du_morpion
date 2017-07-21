require_relative 'game.rb'
require_relative'board.rb'
require_relative 'player.rb'

def player_names1
	puts 'salut, quel est ton nom joueur numéro 1?'
	name = gets.chomp.to_s
end

def player_names2
	puts 'salut, quel est ton nom joueur numéro 2?'
	name = gets.chomp.to_s
end

player1 = player_names1
joueur_1 = Player.new(player1) #instance de la class player pour le joueur 1


player2 = player_names2
joueur_2 = Player.new(player2) #instance de la class Player pour le joueur 2

game_1 = Game.new(player1, player2) #instance créée pour le game - une seule nécessaire.

puts 'Voici le jeu, bon courage, ' + joueur_1.name.to_s + ' tu commences...'

tableau = Board.new #instance crée pour un tableau --- il faudra require_relative 'board.rb'
tableau.puts_board

game_1.instance_case 








#tableau.boardcase_update(0,1, 'joueur_2')



