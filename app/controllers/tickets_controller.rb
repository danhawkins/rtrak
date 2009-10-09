class TicketsController < ApplicationController
  
  def index
    if params[:q]
      @search = Ticket.search_using_query(params[:q])
      @tickets = @search.all
    else
      @tickets = Ticket.all
    end
  end
  
  def show
    @ticket = Ticket.find(params[:id])
  end
  
  def new
    @ticket = Ticket.new
  end
  
  def create
    @ticket = Ticket.new(params[:ticket])
    if @ticket.save
      flash[:notice] = "Successfully created ticket."
      redirect_to tickets_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @ticket = Ticket.find(params[:id])
  end
  
  def update
    @ticket = Ticket.find(params[:id])
    @ticket.comments.build(params[:comment]) if params[:comment]
    if @ticket.update_attributes(params[:ticket])
      flash[:notice] = "Successfully updated ticket."
      redirect_to tickets_path
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    flash[:notice] = "Successfully destroyed ticket."
    redirect_to tickets_url
  end
end
