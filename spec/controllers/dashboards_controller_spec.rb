require File.dirname(__FILE__) + '/../spec_helper'
 
describe DashboardsController do
  fixtures :all
  integrate_views
  
  it "show action should render show template" do
    get :show, :id => Dashboard.first
    response.should render_template(:show)
  end
end
