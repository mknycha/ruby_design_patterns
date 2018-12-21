# frozen_string_literal: true

class MarketingCampaignsServiceAdapter < YamlService
  def initialize(service)
    @service = service
  end

  def yaml_data
    parsed_object = JSON.parse(@service.funds_per_campaign)
    parsed_object.to_yaml
  end
end
