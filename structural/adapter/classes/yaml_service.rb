# frozen_string_literal: true

# Interface that must be in adapter
class YamlService
  def yaml_data
    raise 'Must be implemented in a subclass!'
  end
end
