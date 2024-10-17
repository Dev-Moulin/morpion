require 'pry'

class Player
   attr_accessor :name

   def initialize(name)
     @name = name
   end

  def inscription
    print "Entrez le nom du joueur n°1 : "
    inscription_player_1 = gets.chomp
    print ">"
    player_1 = Player.new(inscription_player_1)
    puts "Hey!! Salut #{player_1.name}!!"

    print "Entrez le nom du joueur n°2 : "
    inscription_player_2 = gets.chomp
    print ">"
    player_2 = Player.new(inscription_player_2)
    puts "Hey!! Salut #{player_2.name}!!"

    binding.pry

    puts ""
    puts  "-------------------------------------------------"
    puts  "| X              World of Morpion             O |"
    puts  "|                       --                      |"
    puts  "| O              Ca va gratter !!             X |"
    puts  "-------------------------------------------------"
    puts ""
    return player_1, player_2
  end
end

 # Créer un objet Player et appeler la méthode inscription
game = Player.new("Game")  # Le nom ici n'est pas important, juste pour créer une instance
player_1, player_2 = game.inscription  # Appeler la méthode inscription à partir de l'objet