# frozen_string_literal: true

Dir['classes/*'].each { |file| require_relative file }

football_link = LinkComponent.new('/events/football', 'Football events')

wrapped_link = UnorderedListWrapper.new(
  ListItemWrapper.new(football_link)
)

puts 'Wrapped link:'
puts wrapped_link.to_html
