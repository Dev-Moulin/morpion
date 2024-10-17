

# Création d'un hash associant les noms de cases à leurs indices
cases = {
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

# # Fonction pour obtenir les coordonnées d'une case
# def get_coordinates(case_name, cases_hash)
#   cases_hash[case_name]
# end

# # Exemple d'utilisation
# case_name = 'c3' # ou '3c'
# coordinates = get_coordinates(case_name, cases)
# puts "Les coordonnées de #{case_name} sont : #{coordinates.inspect}"
# Convertir le hash en un tableau aplati
flat_cases = cases.to_a.flatten

# Afficher le résultat
puts "Hash aplati :"
puts flat_cases.inspect