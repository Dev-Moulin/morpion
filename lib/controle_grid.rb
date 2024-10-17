
class grid_control
  
  def horizontal
    @grid_view.each do |scratch|# ont veut verifier
      if scratch.all?
    end
  end

  # Vérification 3 à travers/ horizontal
  # Cette méthode vérifie uniquement les 
  # victoires horizontales (trois symboles 
  # identiques sur une même ligne).
  # on verifie si le tableaux représente:
  # ['X', 'X', 'X'], win -> condition = true donc @@winner = X
  #['O', 'O', ' '],
  #['X', 'O', 'X']
  def three_across  
    @board.each do |i|
      if i.all? { |j| j == 'X' }
        @@winner = 'X'
        @@turn_count = 10
      elsif i.all? { |j| j == 'O' }
        @@winner = 'O'
        @@turn_count = 10
      else
        nil
      end
    end
  end

end