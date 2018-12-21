# frozen_string_literal: true

require_relative 'yaml_service'

class BonusFundsService < YamlService
  def yaml_data
    [
      {
        customer_id: 77,
        bonus_funds_awarded: 45.0,
        bonus_funds_used: 12.0,
        currency: 'EUR',
        exchange_rate: 4.2
      },
      {
        customer_id: 54,
        bonus_funds_awarded: 20.0,
        bonus_funds_used: 6.0,
        currency: 'USD',
        exchange_rate: 3.4
      }
    ].to_yaml
  end
end
