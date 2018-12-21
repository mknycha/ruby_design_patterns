# frozen_string_literal: true

class MarketingCampaignsService
  def funds_per_campaign
    [
      {
        campaign_id: 3,
        title: 'New customers',
        funds: 430_000.0
      },
      {
        campaign_id: 7,
        title: 'Rich customers',
        funds: 700_000.0
      }
    ].to_json
  end
end
