# frozen_string_literal: true

# Singleton class

class SettingsManager
  attr_accessor :storage

  def initialize
    @storage = {}
  end

  def add_setting(key, value)
    @storage[key] = value
  end

  def get_setting_value(key)
    @storage[key]
  end

  def self.instance
    @@settings_manager
  end

  # rubocop:disable Style/ClassVars
  @@settings_manager = SettingsManager.new
  # rubocop:enable Style/ClassVars

  private_class_method :new
end
