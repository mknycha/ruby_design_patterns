# frozen_string_literal: true

# Concrete Component
class LinkComponent < HtmlComponent
  def initialize(link, content = '')
    @link = link
    @content = content
  end

  def to_html
    "<a href='#{@link}'>#{@content}</a>"
  end
end
