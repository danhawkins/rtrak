class MilestonesController < ApplicationController
  def index
    @milestones = Milestone.all
  end
  
  def show
    @milestone = Milestone.find(params[:id])
  end
  
  def new
    @milestone = Milestone.new
  end
  
  def create
    @milestone = Milestone.new(params[:milestone])
    if @milestone.save
      flash[:notice] = "Successfully created milestone."
      redirect_to @milestone
    else
      render :action => 'new'
    end
  end
  
  def edit
    @milestone = Milestone.find(params[:id])
  end
  
  def update
    @milestone = Milestone.find(params[:id])
    if @milestone.update_attributes(params[:milestone])
      flash[:notice] = "Successfully updated milestone."
      redirect_to @milestone
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @milestone = Milestone.find(params[:id])
    @milestone.destroy
    flash[:notice] = "Successfully destroyed milestone."
    redirect_to milestones_url
  end
end
