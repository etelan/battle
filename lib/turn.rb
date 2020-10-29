class Turn

  attr_accessor :turn

  def initialize
    # True for p1, false for p2
    @turn = true
  end

  def whos_turn?
    if @turn then 'p1' else 'p2' end
  end

  def p1_class
    if @turn then "split left is_turn" else "split left not_turn" end
  end

  def p2_class
    if !@turn then "split right is_turn" else "split right not_turn" end
  end


end
