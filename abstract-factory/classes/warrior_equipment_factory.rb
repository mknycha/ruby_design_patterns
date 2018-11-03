class WarriorEquipmentFactory < EquipmentFactory
    def make_armor
        HeavyArmor.new
    end

    def make_weapon
        Sword.new
    end
end
