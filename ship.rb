# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200
  SHIP_MOVEMENT = 5

  def initialize(x, y)
    @x = x
    @y = y
    @missile_coordinates = []
  end

  def move_left
    @x -= SHIP_MOVEMENT
  end

  def move_right
    @x += SHIP_MOVEMENT
  end

  def fire
    @missile_coordinates << Missile.new(@x, (@y-HEIGHT)/2)
  end

  def draw
    # Ignore this
  end

end




=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
  Clean easily changable code that is not over entangle. Basically by using OOD we can keep our code functioning by only
  making changes where they are needed by keeping our classess simple and external from other classes. 

2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
  Single Responsibility, open closed, linkvok principle, interface segregation, dependency inversion.
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
  True, to an extent. We don't need to be planning and designing the entire program, but by planning individual steps prior to implementation, 
  we can alleviate issues that will arise later. 
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
  Exempliary code, make it easy to expand upon. 
5. How does applying SRP naturally lead to good design?
  It keeps our code simple and understandable. It also keeps our code from being over entangled. 
=end
