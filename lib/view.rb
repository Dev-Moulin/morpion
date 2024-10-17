class Grid
  def initialize
    # Crée une grille vide de 3x3
    @grid_view = Array.new(3) { Array.new(3, ' ') }
  end

  # Le hash des coordonnées possibles
  def console_grid
    {
      'a1' => [0, 0], '1a' => [0, 0],
      'a2' => [1, 0], '2a' => [0, 1],
      'a3' => [2, 0], '3a' => [0, 2],
      'b1' => [0, 1], '1b' => [1, 0],
      'b2' => [1, 1], '2b' => [1, 1],
      'b3' => [2, 1], '3b' => [1, 2],
      'c1' => [0, 2], '1c' => [2, 0],
      'c2' => [1, 2], '2c' => [2, 1],
      'c3' => [2, 2], '3c' => [2, 2]
    }
  end

  # Mise à jour de la grille avec les coordonnées et le symbole du joueur
  def add_coordonnée(coordinate, symbol)
    @grid_view ||= Array.new(3) { Array.new(3, ' ') }  # Initialisation de la grille si elle n'existe pas
    coord_one, coord_two = coordinate  # Récupération des coordonnées
    @grid_view[coord_one][coord_two] = symbol  # Mise à jour de la grille
  end

  # Méthode pour obtenir une coordonnée valide
  def get_valid_coordinate
    coordinates_map = console_grid
    user_coordn = nil

    # Boucle jusqu'à ce que l'utilisateur entre une seule coordonnée valide
    until coordinates_map.key?(user_coordn)
      puts 'Veuillez entrer des coordonnées valides (par exemple, a1, 1a, b2, etc.) :'
      user_coordn = gets.chomp.downcase  # Convertit l'entrée en minuscules
      puts "Les coordonnées que vous avez entrées ne sont pas valides." unless coordinates_map.key?(user_coordn)
    end

    coordinates_map[user_coordn]  # Renvoie les coordonnées associées à la clé
  end

  # Accesseur pour récupérer la grille actuelle
  def grid
    @grid_view
  end
end

class View
  # Méthode pour afficher la grille de jeu
  def view_grid(grid)
    puts "    A   B   C"
    puts "  _____________"
    puts "1 | #{grid[0][0]} | #{grid[0][1]} | #{grid[0][2]} |"
    puts "  ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ "
    puts "2 | #{grid[1][0]} | #{grid[1][1]} | #{grid[1][2]} |"
    puts "  ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ "
    puts "3 | #{grid[2][0]} | #{grid[2][1]} | #{grid[2][2]} |"
    puts "̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅"
  end
end

# Utilisation
grid = Grid.new
view = View.new

# Affichage de la grille initiale
view.view_grid(grid.grid)

# Récupération de la coordonnée valide entrée par l'utilisateur
coord = grid.get_valid_coordinate

# Mise à jour de la grille avec le symbole 'X' pour le joueur
grid.add_coordonnée(coord, 'X')

# Affichage de la grille mise à jour
view.view_grid(grid.grid)
