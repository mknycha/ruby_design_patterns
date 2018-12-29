# frozen_string_literal: true

require_relative 'wrapper'

# Concrete decorator
class UnorderedListWrapper < Wrapper
  def to_html
    "<ul>#{@component.to_html}</ul>"
  end
end
