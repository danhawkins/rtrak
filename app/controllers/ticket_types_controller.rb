class TicketTypesController < ApplicationController
  def index
    @ticket_types = TicketType.all
  end
  
  def show
    @ticket_type = TicketType.find(params[:id])
  end
  
  def new
    @ticket_type = TicketType.new
  end
  
  def create
    @ticket_type = TicketType.new(params[:ticket_type])
    if @ticket_type.save
      flash[:notice] = "Successfully created ticket type."
      redirect_to @ticket_type
    else
      render :action => 'new'
    end
  end
  
  def edit
    @ticket_type = TicketType.find(params[:id])
  end
  
  def update
    @ticket_type = TicketType.find(params[:id])
    if @ticket_type.update_attributes(params[:ticket_type])
      flash[:notice] = "Successfully updated ticket type."
      redirect_to @ticket_type
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @ticket_type = TicketType.find(params[:id])
    @ticket_type.destroy
    flash[:notice] = "Successfully destroyed ticket type."
    redirect_to ticket_types_url
  end
end
