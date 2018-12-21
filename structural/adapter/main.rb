require 'json'
require 'yaml'

Dir['classes/*.rb'].each { |file| require_relative file }

library = YamlProcessingLibrary.new
bonus_funds_service = BonusFundsService.new
library.process_service_data(bonus_funds_service)

marketing_campaigns_service = MarketingCampaignsService.new
marketing_campaigns_service_adapter = MarketingCampaignsServiceAdapter.new(
  marketing_campaigns_service
)
library.process_service_data(marketing_campaigns_service_adapter)

puts 'Trying to process MarketingCampaignsService without an adapter'
library.process_service_data(marketing_campaigns_service)
