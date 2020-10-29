class Player
  DEFAULT_HIT_POINTS = 60
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.recieve_damage
  end

  def receive_damage
    @hit_points -= rand(1..10)
  end

  def heal_damage
    @hit_points += 10
  end

end
