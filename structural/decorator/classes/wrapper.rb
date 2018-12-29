# frozen_string_literal: true

# Decorator
class Wrapper < HtmlComponent
  def initialize(component)
    @component = component
  end
end
