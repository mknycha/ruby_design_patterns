require_relative 'session.rb'

puts 'Calling session instance'
session_a = Session.instance
puts 'Calling session instance again'
session_b = Session.instance
puts "Are both instances the same? #{session_a == session_b}"
