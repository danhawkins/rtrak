require File.dirname(__FILE__) + '/../spec_helper'
 
describe TicketTypesController do
  fixtures :all
  integrate_views
  
  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end
  
  it "show action should render show template" do
    get :show, :id => TicketType.first
    response.should render_template(:show)
  end
  
  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end
  
  it "create action should render new template when model is invalid" do
    TicketType.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end
  
  it "create action should redirect when model is valid" do
    TicketType.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(ticket_type_url(assigns[:ticket_type]))
  end
  
  it "edit action should render edit template" do
    get :edit, :id => TicketType.first
    response.should render_template(:edit)
  end
  
  it "update action should render edit template when model is invalid" do
    TicketType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TicketType.first
    response.should render_template(:edit)
  end
  
  it "update action should redirect when model is valid" do
    TicketType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TicketType.first
    response.should redirect_to(ticket_type_url(assigns[:ticket_type]))
  end
  
  it "destroy action should destroy model and redirect to index action" do
    ticket_type = TicketType.first
    delete :destroy, :id => ticket_type
    response.should redirect_to(ticket_types_url)
    TicketType.exists?(ticket_type.id).should be_false
  end
end
