class Equipment
  def initialize
    @storage = {}
  end

  def add_armor(armor)
    @storage[:armor] = armor
  end

  def add_weapon(weapon)
    @storage[:weapon] = weapon
  end

  def to_s
    @storage.values.map(&:to_s)
  end
end
