class EquipmentFactory
    def make_armor
        raise 'This method must be overritten in a subclass'
    end

    def make_weapon
        raise 'This method must be overritten in a subclass'
    end
end
