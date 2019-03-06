#what do i do with this? Its staring at me.
Vector = Struct.new(:x, :y) do
  def to_s
    "#{x}, #{y}"
  end
end