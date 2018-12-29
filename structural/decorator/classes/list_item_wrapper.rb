# frozen_string_literal: true

require_relative 'wrapper'

# Concrete decorator
class ListItemWrapper < Wrapper
  def to_html
    "<li>#{@component.to_html}</li>"
  end
end
