class Missile
  MISSILE_MOVEMENT = 10
    
  def initialize(x, y)
    @x = x
    @y = y 
  end
  
  def move_missile
    @y -= MISSILE_MOVEMENT
  end

  def move_missiles
    @missile_coordinates.each do |missile|
      missile.move_missle
    end
  end

  def draw_missiles
    @missile_coordinates.each do |missile|

    end
  end
end