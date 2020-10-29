require_relative './turn'

class Game

  attr_reader :turn_controller, :end

  def initialize(p1, p2, turn_class = Turn)
    @players = [p1, p2]
    @turn_controller = turn_class.new
    @end = false
  end


  def target_calculator(target)
    if target == "p1"
      player_1
    elsif target == "p2"
       player_2
    end
  end

  def attack(player)
    player.receive_damage
    @hp = player.hit_points
    puts @hp
    if @hp <= 0 then @end = true end
    @turn_controller.turn = !@turn_controller.turn
  end

  def heal(player)
    player.heal_damage
    @turn_controller.turn = !@turn_controller.turn
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

end
