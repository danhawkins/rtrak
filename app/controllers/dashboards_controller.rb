class DashboardsController < ApplicationController
  before_filter :require_user
  
  def show
    @dashboard = current_user.dashboard || current_user.dashboard = Dashboard.create
  end
end
