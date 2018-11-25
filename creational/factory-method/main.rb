Dir['classes/**/*.rb'].each { |file| require_relative file }

require 'csv'

puts 'Generating salary report'
SalaryReport.new.generate_file
puts 'Generating sales report'
SalesReport.new.generate_file
