require File.dirname(__FILE__) + '/../spec_helper'
 
describe DomainsController do
  fixtures :all
  integrate_views
  
  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end
  
  it "show action should render show template" do
    get :show, :id => Domain.first
    response.should render_template(:show)
  end
  
  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end
  
  it "create action should render new template when model is invalid" do
    Domain.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end
  
  it "create action should redirect when model is valid" do
    Domain.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(domain_url(assigns[:domain]))
  end
  
  it "edit action should render edit template" do
    get :edit, :id => Domain.first
    response.should render_template(:edit)
  end
  
  it "update action should render edit template when model is invalid" do
    Domain.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Domain.first
    response.should render_template(:edit)
  end
  
  it "update action should redirect when model is valid" do
    Domain.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Domain.first
    response.should redirect_to(domain_url(assigns[:domain]))
  end
  
  it "destroy action should destroy model and redirect to index action" do
    domain = Domain.first
    delete :destroy, :id => domain
    response.should redirect_to(domains_url)
    Domain.exists?(domain.id).should be_false
  end
end
