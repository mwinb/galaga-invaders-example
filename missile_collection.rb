class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def add_from(space_craft)
    missile = Missile.new(space_craft.muzzle_location)
    missile.launch(space_craft.firing_velocity)
    add(missile)
  end

end
