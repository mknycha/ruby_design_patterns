# Concrete factory

class WizardEquipmentFactory < EquipmentFactory
  def make_armor
    LightArmor.new
  end

  def make_weapon
    Wand.new
  end
end
