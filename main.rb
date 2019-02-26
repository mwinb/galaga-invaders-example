#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
  Duck typing is using the behavior of a class instead of the class itself as a type.
  This involves polymorphism because it allows multiple types to be used based on the behavior
  and the methods it contains.
2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
   Switch statements for type checking. Type checking. is_a?, kind_of?, and responds_to? statements.
3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
   False.
=end
