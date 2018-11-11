Dir['classes/*.rb',
    'classes/weapons/*.rb',
    'classes/armors/*.rb'].each { |file| require_relative file }

def create_character_equipment(factory)
  equipment = Equipment.new
  equipment.add_armor factory.make_armor
  equipment.add_weapon factory.make_weapon
  equipment
end

equipment = create_character_equipment(WizardEquipmentFactory.new)
puts "Created equipment for wizard: #{equipment}"

equipment = create_character_equipment(WarriorEquipmentFactory.new)
puts "Created equipment for warrior: #{equipment}"
