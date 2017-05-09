class PublishingsController < ApplicationController
  before_action :authenticate_user!

  def create
    campaign = Campaign.find params[:campaign_id]
    if campaign.publish!
      redirect_to campaign, notice: 'Campaign is published!'
    else
      redirect_to campaign, notice: 'Can\'t publish campaign, already published?'
    end
  end
end
