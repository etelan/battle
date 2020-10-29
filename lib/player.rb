class Player

  @@DEFAULT_HIT_POINTS = 60

  attr_reader :name, :hit_points

  def initialize(name, hit_points = @@DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.recieve_damage(calculate_damage)
  end

  def calculate_damage
    base = rand(1..10)

    # Critical Calulator
    if base == 10 then base += rand(1..5) end

    # Return Damage
    return base
  end

  def receive_damage(dmg)
    @hit_points -= dmg
  end

  def heal_damage
    @hit_points += 6
  end

end
