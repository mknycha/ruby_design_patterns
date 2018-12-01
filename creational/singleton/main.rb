require_relative 'settings_manager.rb'

puts 'Adding setting to one instance of SettingsManager'
settings_manager = SettingsManager.instance
settings_manager.add_setting('base_currency', 'EUR')

puts 'Adding another setting to another instance of SettingsManager'
settings_manager = SettingsManager.instance
settings_manager.add_setting('currency_display_precision', 2)

puts "All the settings stored in current instance: #{settings_manager.storage}"

puts 'What is going to happen when we try to create new SettingsManager?'
SettingsManager.new
