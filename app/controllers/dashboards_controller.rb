class DashboardsController < ApplicationController
  
  def show
    @dashboard = current_user.dashboard || current_user.dashboard = Dashboard.create
  end
end
