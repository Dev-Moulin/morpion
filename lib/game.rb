
class Grid
  
  def console_grid(coordonnées)
    coordonnées = {
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

  def add_coordonnées (coordonnées)
    @grid_view[coordonnées] = symbol
  end

  
  
end